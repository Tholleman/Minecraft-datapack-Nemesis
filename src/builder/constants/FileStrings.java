package builder.constants;

import java.util.Map;

public class FileStrings
{
	private FileStrings() {}
	
	/**
	 * The directory that should be parsed and or copied
	 */
	public static final String SOURCE_DIRECTORY = "data source";
	
	/**
	 * The directory that should be the place where the files from {@link FileStrings#SOURCE_DIRECTORY} should be parsed/copied to
	 */
	public static final String OUTPUT_DIRECTORY = "data";
	
	/**
	 * The files that should be added to the final zip but isn't in the {@link FileStrings#SOURCE_DIRECTORY}.
	 * <p>
	 * If the file should be parsed in some way, add the file name of the parsed file as the second entry.
	 * Use {@code null} if no parsing is needed
	 */
	public static Map<String, String> otherSourceFiles() {return Map.ofEntries(Map.entry("pack.json", "pack.mcmeta"));}
	
	public static final String CONFIG_PATH = "src/config.properties";
	
	/**
	 * String of the archive file type
	 * <p>
	 * Used to make and recognize zip files
	 */
	public static final String ZIP = ".zip";
	
	public static final String JSON = ".json";
	
	/**
	 * Files that should be ignored from the data source directory
	 */
	public static String[] zipBlackList() { return new String[]{".*\\.mctemplate", ".*\\.md", ".*\\.txt"};}
	
	/**
	 * Files that should be parsed from the data source directory
	 */
	public static String[] parseWhiteList() {return new String[]{".*\\.mcfunction"};}
}
