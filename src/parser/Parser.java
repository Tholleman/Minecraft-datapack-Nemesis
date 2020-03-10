package parser;

import java.io.*;
import java.util.HashMap;

import static parser.Constants.ERROR_MESSAGES.*;
import static parser.Constants.IDENTIFIERS.*;
import static parser.Helper.splitOnWS;

public class Parser
{
	public static void parse(File file, String outputPath, int compileLevel)
	{
		try (BufferedReader br = new BufferedReader(new FileReader(file));
		     FileWriter fw = new FileWriter(outputPath))
		{
			new Parser(file.getParent(), br, fw, compileLevel).parse();
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
	private final int compileLevel;
	
	public Parser(String inputDir, BufferedReader fileToParse, FileWriter output, int compileLevel)
	{
		this(inputDir, fileToParse, new Writer(output), new HashMap<>(), compileLevel);
	}
	
	private Parser(String inputDir, BufferedReader fileToParse, Writer writer, HashMap<String, String> variables, int compileLevel)
	{
		this.inputDir = inputDir;
		reader = new Reader(fileToParse);
		this.writer = writer;
		this.variables = variables;
		this.compileLevel = compileLevel;
	}
	
	public void parse()
	{
		String line;
		while ((line = reader.readLine()) != null)
		{
			if (reader.isMeta())
			{
				handleMetaLine(line);
				continue;
			}
			writer.writeLine(line);
		}
	}
	
	private void handleMetaLine(String line)
	{
		String[] args = splitOnWS(line);
		
		switch (args[0])
		{
			case Constants.META_TAGS.VAR:
				if (args.length < 3) throw new ParsingException(NOT_ENOUGH_ARGUMENTS_AT_LEAST(args[0], 3, reader.getLineCounter()));
				variables.put(args[1], Helper.reattach(line, args[1]));
				return;
			case Constants.META_TAGS.REPEAT:
				try
				{
					if (args.length != 2) throw new ParsingException(NOT_ENOUGH_ARGUMENTS(args[0], 2, reader.getLineCounter()));
					writer.setRepeat(Integer.parseInt(args[1]));
					return;
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
					new Parser(inputDir, br, writer, variables, compileLevel).parse();
				}
				catch (IOException e)
				{
					throw new ParsingException(AN_ERROR_OCCURRED_WHILE_PARSING(filePath, reader.getLineCounter()), e);
				}
				return;
			case Constants.META_TAGS.COMPILE_LEVEL:
				if (args.length != 2) throw new ParsingException(NOT_ENOUGH_ARGUMENTS(args[0], 2, reader.getLineCounter()));
				try {
					if (Integer.parseInt(args[1]) > compileLevel) reader.skipOne();
				}
				catch (NumberFormatException nfEx)
				{
					throw new ParsingException(NOT_A_NUMBER(reader.getLineCounter()), nfEx);
				}
				break;
			default:
				throw new ParsingException(UNKNOWN_LINE_META(args[0], reader.getLineCounter()));
		}
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
		private int lineCounter = 0;
		private boolean meta;
		private boolean skipOne;
		private String next;
		
		public Reader(BufferedReader fileToParse)
		{
			assert fileToParse != null;
			this.fileToParse = fileToParse;
			meta = false;
			skipOne = false;
		}
		
		public String readLine()
		{
			try
			{
				StringBuilder result = new StringBuilder();
				boolean multilining = false;
				do
				{
					String s;
					if (next == null || useSkipOne())
					{
						s = fileToParse.readLine();
						if (s == null)
						{
							
							s = result.toString();
							if (s.isEmpty())
							{
								return null;
							}
							return s;
						}
						lineCounter++;
						
						s = s.replaceAll("^\\s+", "");
						if (s.isEmpty()) continue;
						if (s.startsWith(COMMENT_PREFIX)) continue;
						if (useSkipOne()) continue;
						
						if (multilining)
						{
							if (s.startsWith(META_PREFIX) || s.startsWith(COMMAND_PREFIX))
							{
								next = s;
								break;
							}
							s = parseInlineMeta(s);
							
							result.append(s);
							continue;
						}
					}
					else
					{
						s = next;
						next = null;
					}
					s = parseInlineMeta(s);
					
					if (s.startsWith(META_PREFIX))
					{
						meta = true;
						multilining = true;
						result.append(s.substring(META_PREFIX.length()));
						continue;
					}
					else if (s.startsWith(COMMAND_PREFIX))
					{
						meta = false;
						multilining = true;
						result.append(s.substring(COMMAND_PREFIX.length()));
						continue;
					}
					throw new ParsingException(UNEXPECTED_START(lineCounter));
				} while (true);
				return result.toString();
			}
			catch (IOException e)
			{
				throw new ParsingException(UNKNOWN_READ_ERROR(getLineCounter()), e);
			}
		}
		
		public int getLineCounter()
		{
			// If next is filled, the amount of lines read is 1 higher, subtract it when asked
			return lineCounter + (next == null ? 0 : 1);
		}
		
		public boolean isMeta()
		{
			return meta;
		}
		
		public void skipOne()
		{
			skipOne = true;
		}
		
		private boolean useSkipOne()
		{
			if (!skipOne) return false;
			
			skipOne = false;
			next = null;
			
			return true;
		}
	}
	
	private static class Writer
	{
		private static final int REPEAT_DEFAULT = 1;
		
		private final FileWriter output;
		private int repeat = REPEAT_DEFAULT;
		private boolean first = true;
		
		public Writer(FileWriter output)
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
