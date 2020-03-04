package parser;

import java.io.*;
import java.util.HashMap;

import static parser.Constants.ERROR_MESSAGES.*;
import static parser.Constants.IDENTIFIERS.*;
import static parser.Helper.splitOnWS;

public class Parser
{
	public static void parse(File file, String outputPath)
	{
		try (BufferedReader br = new BufferedReader(new FileReader(file));
		     FileWriter fw = new FileWriter(outputPath))
		{
			new Parser(file.getParent(), br, fw).parse();
		}
		catch (IOException e)
		{
			throw new ParsingException(UNEXPECTED_ERROR_WHILE_INITIALIZING, e);
		}
	}
	
	private final String inputDir;
	private final Reader reader;
	private final Writer writer;
	private final HashMap<String, String> variables;
	
	public Parser(String inputDir, BufferedReader fileToParse, FileWriter output)
	{
		this.inputDir = inputDir;
		reader = new Reader(fileToParse);
		writer = new Writer(output);
		variables = new HashMap<>();
	}
	
	private Parser(String inputDir, BufferedReader fileToParse, Writer writer, HashMap<String, String> variables)
	{
		this.inputDir = inputDir;
		reader = new Reader(fileToParse);
		this.writer = writer;
		this.variables = variables;
	}
	
	public void parse()
	{
		String line;
		while ((line = reader.readLine()) != null)
		{
			if (handleMetaLine(line)) continue;
			StringBuilder builder = new StringBuilder(line);
			while (!builder.toString().endsWith(LINE_TERMINATOR))
			{
				builder.append(reader.readExpectedLine());
			}
			
			line = builder.toString();
			writer.writeLine(line.substring(0, line.length() - LINE_TERMINATOR.length()));
		}
	}
	
	private boolean handleMetaLine(String line)
	{
		if (line.startsWith(META_PREFIX))
		{
			if (!line.endsWith(META_SUFFIX))
			{
				if (!line.endsWith(META_MULTILINE)) throw new ParsingException(EXPECTED_META_SUFFIX(reader.getLineCounter()));
				do
				{
					line = line.substring(0, line.length() - META_SUFFIX.length()) + reader.readExpectedLine();
				} while (line.endsWith(META_MULTILINE));
				
				if (!line.endsWith(META_SUFFIX)) throw new ParsingException(EXPECTED_META_SUFFIX(reader.getLineCounter()));
			}
			
			line = Helper.metaTrim(line);
			
			String[] args = splitOnWS(line);
			
			switch (args[0])
			{
				case Constants.META_TAGS.VAR:
					if (args.length < 3) throw new ParsingException(NOT_ENOUGH_ARGUMENTS_AT_LEAST(args[0], 3, reader.getLineCounter()));
					variables.put(args[1], Helper.reattach(line, args[1]));
					return true;
				case Constants.META_TAGS.REPEAT:
					try
					{
						if (args.length != 2) throw new ParsingException(NOT_ENOUGH_ARGUMENTS(args[0], 2, reader.getLineCounter()));
						writer.setRepeat(Integer.parseInt(args[1]));
						return true;
					}
					catch (NumberFormatException nfEx)
					{
						throw new ParsingException(NOT_A_NUMBER(reader.getLineCounter()), nfEx);
					}
				case Constants.META_TAGS.FILE:
					if (args.length < 2) throw new ParsingException(NOT_ENOUGH_ARGUMENTS_AT_LEAST(args[0], 2, reader.getLineCounter()));
					String filePath = inputDir + File.separator + Helper.reattach(line, args[0]);
					try (BufferedReader br = new BufferedReader(new FileReader(new File(filePath))))
					{
						new Parser(inputDir, br, writer, variables).parse();
					}
					catch (IOException e)
					{
						throw new ParsingException(AN_ERROR_OCCURRED_WHILE_PARSING(filePath, reader.getLineCounter()), e);
					}
					return true;
				default:
					throw new ParsingException(UNKNOWN_LINE_META(args[0], reader.getLineCounter()));
			}
			
		}
		return false;
	}
	
	private String parseInlineMeta(String line)
	{
		int last;
		while ((last = line.lastIndexOf(INLINE_META_PREFIX)) != -1)
		{
			int endIndex = line.indexOf(INLINE_META_SUFFIX, last);
			String result = handleInlineMeta(line.substring(last + INLINE_META_PREFIX.length(), endIndex));
			line = line.substring(0, last) + result + line.substring(endIndex + INLINE_META_SUFFIX.length());
		}
		return line;
	}
	
	private String handleInlineMeta(String line)
	{
		String[] args = splitOnWS(line);
		if (args.length == 1)
		{
			String variableValue = variables.get((args[0]));
			if (variableValue == null) throw new ParsingException(UNKNOWN_VARIABLE(args[0], reader.getLineCounter()));
			return variableValue;
		}
		if (args.length == 3)
		{
			switch (args[1])
			{
				case PLUS:
					return Integer.parseInt(args[0]) + Integer.parseInt(args[2]) + "";
				case MINUS:
					return Integer.parseInt(args[0]) - Integer.parseInt(args[2]) + "";
				case MULTIPLY:
					return Integer.parseInt(args[0]) * Integer.parseInt(args[2]) + "";
				case DIVIDE:
					return Integer.parseInt(args[0]) / Integer.parseInt(args[2]) + "";
			}
		}
		throw new ParsingException(UNKNOWN_INLINE_META(line, reader.getLineCounter()));
	}
	
	private class Reader
	{
		private final BufferedReader fileToParse;
		private int _lineCounter = 0;
		
		private Reader(BufferedReader fileToParse)
		{
			assert fileToParse != null;
			this.fileToParse = fileToParse;
		}
		
		private String readLine()
		{
			try
			{
				String s = fileToParse.readLine();
				if (s != null)
				{
					_lineCounter++;
					s = s.trim();
					if (s.isEmpty()) return readLine();
					if (s.startsWith(Constants.IDENTIFIERS.COMMENT_PREFIX)) return readLine();
					s = parseInlineMeta(s);
				}
				return s;
			}
			catch (IOException e)
			{
				throw new ParsingException(UNKNOWN_READ_ERROR(getLineCounter()), e);
			}
		}
		
		private String readExpectedLine()
		{
			String s = readLine();
			if (s == null) throw new ParsingException(EXPECTED_ANOTHER_LINE(getLineCounter()));
			return s;
		}
		
		public int getLineCounter()
		{
			return _lineCounter;
		}
	}
	
	private static class Writer
	{
		private static final int REPEAT_DEFAULT = 1;
		
		private final FileWriter output;
		private int repeat = REPEAT_DEFAULT;
		private boolean first = true;
		
		private Writer(FileWriter output)
		{
			assert output != null;
			this.output = output;
		}
		
		public void setRepeat(int amount) {repeat = amount;}
		
		public void writeLine(String line)
		{
			try
			{
				for (int i = 0; i < repeat; i++)
				{
					if (first)
					{
						output.write(line);
						first = false;
					}
					else
					{
						output.write(System.lineSeparator() + line);
					}
				}
				repeat = REPEAT_DEFAULT;
			}
			catch (IOException e)
			{
				throw new ParsingException(UNKNOWN_WRITE_ERROR, e);
			}
		}
	}
}
