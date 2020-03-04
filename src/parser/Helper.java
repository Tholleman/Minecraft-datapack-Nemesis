package parser;

public class Helper
{
	public static String metaTrim(String command)
	{
		return command.substring(Constants.IDENTIFIERS.META_PREFIX.length(), command.length() - Constants.IDENTIFIERS.META_SUFFIX.length());
	}
	
	public static String[] splitOnWS(String line)
	{
		return line.split("\\s+");
	}
	
	public static String reattach(String line, String after)
	{
		return line.substring(line.indexOf(after) + after.length() + 1);
	}
}
