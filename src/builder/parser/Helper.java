package builder.parser;

public class Helper
{
	/**
	 * Utility class should not be instantiated
	 */
	private Helper() {}
	
	public static String[] splitOnWS(String line)
	{
		return line.split("\\s+");
	}
	
	public static String reattach(String line, String after)
	{
		return line.substring(line.indexOf(after) + after.length() + 1);
	}
}
