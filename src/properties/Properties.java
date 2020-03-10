package properties;

import parser.ParsingException;

import java.io.*;
import java.util.Map;

public class Properties
{
	private static final java.util.Properties properties = new java.util.Properties();
	
	static {
		try
		{
			properties.load(new FileInputStream("src/config.properties"));
		}
		catch (IOException e)
		{
			throw new ParsingException("Could not read properties file", e);
		}
	}
	
	public static final String DATAPACK_NAME = properties.getProperty("DATAPACK_NAME");
	public static final String CURRENT_MINECRAFT_VERSION = properties.getProperty("CURRENT_MINECRAFT_VERSION");
	public static final CompileLevel COMPILE_LEVEL = CompileLevel.getLevel(Integer.parseInt(properties.getProperty("COMPILE_LEVEL")));
	
	public static final Map<String, String> OTHER_SOURCE_FILES = Map.ofEntries(Map.entry("pack.json", "pack.mcmeta"));
	
	@SuppressWarnings("unused")
	public enum CompileLevel
	{
		production("Production", 1, ""),
		develop("Develop", 2, " DEV"),
		verbose("Verbose", 3, " VERBOSE");
		
		public final String name;
		public final int level;
		public final String zipSuffix;
		
		CompileLevel(String name, int level, String zipSuffix)
		{
			this.name = name;
			this.level = level;
			this.zipSuffix = zipSuffix;
		}
		
		static CompileLevel getLevel(int level)
		{
			for (CompileLevel value : values())
			{
				if (value.level == level)
				{
					return value;
				}
			}
			throw new ParsingException("Unknown level");
		}
	}
}
