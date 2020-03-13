package builder.properties;

import builder.parser.ParsingException;

import java.io.FileInputStream;
import java.io.IOException;

/**
 * Supplier for the properties of a datapack
 *
 * @author Thomas Holleman
 */
public class Properties
{
	/**
	 * Utility class should not be instantiated
	 */
	private Properties() {}
	
	/**
	 * Property loader
	 */
	private static final java.util.Properties propertiesLoader = new java.util.Properties();
	
	static
	{
		try
		{
			propertiesLoader.load(new FileInputStream("src/config.properties"));
		}
		catch (IOException e)
		{
			throw new ParsingException("Could not read properties file", e);
		}
	}
	
	/**
	 * Name of the datapack
	 */
	public static final String DATAPACK_NAME = propertiesLoader.getProperty("DATAPACK_NAME");
	
	/**
	 * The version of minecraft that the datapack is made for
	 */
	public static final String CURRENT_MINECRAFT_VERSION = propertiesLoader.getProperty("CURRENT_MINECRAFT_VERSION");
	
	/**
	 * The level of commands that should be compiled.
	 * <p>
	 * By default, commands have a level of 1.
	 * The compile level indicates the minimum a command has to be for it to be parsed.
	 */
	public static final CompileLevel COMPILE_LEVEL = CompileLevel.getLevel(Integer.parseInt(propertiesLoader.getProperty("COMPILE_LEVEL")));
	
}