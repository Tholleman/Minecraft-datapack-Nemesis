import json.Minify;
import parser.*;
import zipper.Zipper;

import java.io.*;
import java.nio.file.*;
import java.util.*;

import static parser.Constants.ERROR_MESSAGES.*;

public class Builder
{
	private static final String[] BLACKLIST = {".*\\.mctemplate", ".*\\.md", ".*\\.txt"};
	private static final String[] PARSE_WHITELIST = {".*\\.mcfunction"};
	
	public static final String DATAPACK_NAME = "nemesis";
	public static final String CURRENT_MINECRAFT_VERSION = "1.16";
	public static final String SOURCE_DIRECTORY = "data source";
	public static final String OUTPUT_DIRECTORY = "data";
	public static final Map<String, String> OTHER_SOURCE_FILES = Map.ofEntries(Map.entry("pack.json", "pack.mcmeta"));
	
	public static void main(String[] args) throws IOException, InterruptedException
	{
		System.out.println("Minecraft version " + CURRENT_MINECRAFT_VERSION);
		
		iterate(new File(SOURCE_DIRECTORY));
		
		File[] toZip = getFilesToZip();
		
		for (Thread thread : MultiThread.threads)
		{
			thread.join();
		}
		System.out.println("All files inside \"" + SOURCE_DIRECTORY + "\" are now parsed and ready to be used");
		
		Zipper.zip(toZip, DATAPACK_NAME + " " + CURRENT_MINECRAFT_VERSION + ".zip");
		System.out.println("The datapack is now a .zip file and ready to be distributed");
	}
	
	private static File[] getFilesToZip() throws IOException
	{
		Set<Map.Entry<String, String>> entries = OTHER_SOURCE_FILES.entrySet();
		File[] toZip = new File[entries.size() + 1];
		int index = 0;
		for (Map.Entry<String, String> nameOutputSet : entries)
		{
			if (nameOutputSet.getValue() == null || nameOutputSet.getKey().equals(nameOutputSet.getValue()))
			{
				toZip[index] = new File(nameOutputSet.getKey());
			}
			else
			{
				File in = new File(nameOutputSet.getKey());
				if (parseFile(in, nameOutputSet.getValue()))
				{
					File out = new File(nameOutputSet.getValue());
					toZip[index] = out;
				}
				else
				{
					Files.copy(in.toPath(), new File(nameOutputSet.getValue()).toPath(), StandardCopyOption.REPLACE_EXISTING);
					toZip[index] = new File(nameOutputSet.getValue());
				}
			}
			index++;
		}
		toZip[index] = new File(OUTPUT_DIRECTORY);
		return toZip;
	}
	
	private static void iterate(File f) throws IOException
	{
		assert f != null;
		if (f.isDirectory())
		{
			File dataVersion = new File(dataVersion(f.getPath()));
			if (!dataVersion.exists())
			{
				if (!dataVersion.mkdir())
				{
					throw new ParsingException(COULD_NOT_CREATE_DIRECTORY);
				}
			}
			File[] files = f.listFiles();
			assert files != null;
			for (File file : files)
			{
				iterate(file);
			}
			return;
		}
		
		for (String s : BLACKLIST)
		{
			if (f.getName().matches(s)) return;
		}
		
		if (parseFile(f, dataVersion(f.getPath()))) return;
		
		Files.copy(f.toPath(), new File(dataVersion(f.getPath())).toPath(), StandardCopyOption.REPLACE_EXISTING);
	}
	
	private static boolean parseFile(File f, String output) throws FileNotFoundException
	{
		for (String s : PARSE_WHITELIST)
		{
			if (f.getName().matches(s))
			{
				new ParseThread(f, output).start();
				return true;
			}
		}
		
		if (f.getName().endsWith(".json"))
		{
			new MinifyThread(f, output).start();
			return true;
		}
		return false;
	}
	
	private static class MultiThread extends Thread
	{
		private static final Vector<Thread> threads = new Vector<>();
		
		public MultiThread()
		{
			threads.add(this);
		}
	}
	
	private static class ParseThread extends MultiThread
	{
		public final File f;
		public final String output;
		
		private ParseThread(File f, String output)
		{
			this.f = f;
			this.output = output;
		}
		
		@Override
		public void run()
		{
			try
			{
				Parser.parse(f, output);
			}
			catch (ParsingException pEx)
			{
				throw new ParsingException(AN_ERROR_OCCURRED_WHILE_PARSING(f.getName()), pEx);
			}
		}
	}
	
	private static class MinifyThread extends MultiThread
	{
		private final FileInputStream inputStream;
		private final FileOutputStream outputStream;
		
		private MinifyThread(File input, String output) throws FileNotFoundException
		{
			inputStream = new FileInputStream(input);
			outputStream = new FileOutputStream(new File(output));
		}
		
		@Override
		public void run()
		{
			try
			{
				new Minify().minify(inputStream, outputStream);
			}
			catch (Exception e)
			{
				throw new ParsingException(e.getMessage(), e);
			}
		}
	}
	
	private static String dataVersion(String path)
	{
		return path.replaceFirst(SOURCE_DIRECTORY, OUTPUT_DIRECTORY);
	}
}
