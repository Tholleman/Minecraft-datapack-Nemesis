package builder;

import builder.json.Minify;
import builder.parser.Constants;
import builder.parser.Parser;
import builder.parser.ParsingException;
import builder.zipper.Zipper;

import java.io.*;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.util.Map;
import java.util.Set;
import java.util.Vector;

import static builder.properties.Properties.*;

/**
 * The main class that will build the datapack with {@link Builder#main(String[])}
 *
 * @author Thomas Holleman
 */
public class Builder
{
	/**
	 * Files that should be ignored from the data source directory
	 */
	private static final String[] BLACKLIST = {".*\\.mctemplate", ".*\\.md", ".*\\.txt"};
	
	/**
	 * Files that should be parsed from the data source directory
	 */
	private static final String[] PARSE_WHITELIST = {".*\\.mcfunction"};
	
	/**
	 * The directory that should be parsed and or copied
	 */
	public static final String SOURCE_DIRECTORY = "data source";
	
	/**
	 * The files that should be added to the final zip but isn't in the {@link Builder#SOURCE_DIRECTORY}.
	 * <p>
	 * If the file should be parsed in some way, add the file name of the parsed file as the second entry.
	 * Use {@code null} if no parsing is needed
	 */
	private static final Map<String, String> OTHER_SOURCE_FILES = Map.ofEntries(Map.entry("pack.json", "pack.mcmeta"));
	
	/**
	 * The directory that should be the place where the files from {@link Builder#SOURCE_DIRECTORY} should be parsed/copied to
	 */
	public static final String OUTPUT_DIRECTORY = "data";
	
	/**
	 * String of the archive file type
	 * <p>
	 * Used to make and recognize zip files
	 */
	public static final String ZIP = ".zip";
	
	/**
	 * Build the datapack using the files from {@link Builder#SOURCE_DIRECTORY} into {@link Builder#OUTPUT_DIRECTORY} and into a {@link Builder#ZIP} file.
	 *
	 * @param args Not used
	 *
	 * @throws IOException          Could be thrown while reading the files out of {@link Builder#SOURCE_DIRECTORY},
	 *                              while writing to {@link Builder#OUTPUT_DIRECTORY},
	 *                              or while zipping it into a {@link Builder#ZIP} file
	 * @throws InterruptedException Could be thrown while failing to join up the threads that were made to parse each file
	 */
	public static void main(String[] args) throws IOException, InterruptedException
	{
		System.out.println("Minecraft version " + CURRENT_MINECRAFT_VERSION);
		System.out.println("Compile level: " + COMPILE_LEVEL.label);
		
		clean();
		
		iterate(new File(SOURCE_DIRECTORY));
		
		File[] toZip = getFilesToZip();
		
		for (Thread thread : MultiThread.threads)
		{
			thread.join();
		}
		
		// All threads are now back into this one
		
		if (!MultiThread.failures.isEmpty())
		{
			for (Throwable failure : MultiThread.failures)
			{
				failure.printStackTrace();
			}
			return;
		}
		
		System.out.println("All files inside \"" + SOURCE_DIRECTORY + "\" are now parsed and ready to be used");
		
		Zipper.zip(toZip, getDestZipFile());
		System.out.println("The datapack is now a .zip file and ready to be distributed");
	}
	
	private Builder() {}
	
	private static String getDestZipFile()
	{
		return DATAPACK_NAME + " " + CURRENT_MINECRAFT_VERSION + COMPILE_LEVEL.zipSuffix + ZIP;
	}
	
	private static void clean() throws IOException
	{
		//noinspection ConstantConditions
		for (File file : new File("./").listFiles())
		{
			if (file.getName().endsWith(ZIP)) unsafeDelete(file);
		}
		
		delete(new File(OUTPUT_DIRECTORY));
		delete(new File(getDestZipFile()));
		for (Map.Entry<String, String> stringStringEntry : OTHER_SOURCE_FILES.entrySet())
		{
			delete(new File(stringStringEntry.getValue()));
		}
		
		System.out.println("Cleaned artifacts from previous build");
	}
	
	private static void delete(File file) throws IOException
	{
		if (file.exists())
		{
			unsafeDelete(file);
		}
	}
	
	private static void unsafeDelete(File file) throws IOException
	{
		if (file.isDirectory())
		{
			//noinspection ConstantConditions
			for (File listFile : file.listFiles())
			{
				unsafeDelete(listFile);
			}
		}
		
		Files.delete(file.toPath());
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
			if (!dataVersion.exists() && !dataVersion.mkdir())
			{
				throw new ParsingException(Constants.ERROR_MESSAGES.COULD_NOT_CREATE_DIRECTORY);
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
				new ParseThread(f, output, COMPILE_LEVEL.level).start();
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
	
	private abstract static class MultiThread extends Thread
	{
		private static final Vector<Thread> threads = new Vector<>();
		private static final Vector<Throwable> failures = new Vector<>();
		
		public MultiThread()
		{
			threads.add(this);
			setUncaughtExceptionHandler((t, e) -> failures.add(e));
		}
		
		@Override
		public abstract void run();
	}
	
	private static class ParseThread extends MultiThread
	{
		public final File f;
		public final String output;
		public final int compileLevel;
		
		private ParseThread(File f, String output, int compileLevel)
		{
			this.f = f;
			this.output = output;
			this.compileLevel = compileLevel;
		}
		
		@Override
		public void run()
		{
			try
			{
				Parser.parse(f, output, compileLevel);
			}
			catch (ParsingException pEx)
			{
				throw new ParsingException(Constants.ERROR_MESSAGES.AN_ERROR_OCCURRED_WHILE_PARSING(f.getName()), pEx);
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
