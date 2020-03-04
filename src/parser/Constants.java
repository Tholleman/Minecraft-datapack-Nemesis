package parser;

public class Constants
{
	public static class IDENTIFIERS
	{
		public static final String LINE_TERMINATOR = ";";
		public static final String META_PREFIX = "${";
		public static final String META_SUFFIX = "}";
		public static final String META_MULTILINE = "\\";
		
		public static final String INLINE_META_PREFIX = "<<";
		public static final String INLINE_META_SUFFIX = ">>";
		
		public static final String COMMENT_PREFIX = "#";
		
		public static final String PLUS = "+";
		public static final String MINUS = "-";
		public static final String DIVIDE = "/";
		public static final String MULTIPLY = "*";
	}
	
	public static class META_TAGS
	{
		public static final String FILE = "file";
		public static final String REPEAT = "repeat";
		public static final String VAR = "var";
	}
	
	public static class ERROR_MESSAGES
	{
		public static String UNKNOWN_READ_ERROR(int line) {return "An unexpected error occurred while reading line " + line;}
		
		public static final String UNKNOWN_WRITE_ERROR = "An unexpected error occurred while writing line ";
		
		public static String EXPECTED_ANOTHER_LINE(int line) {return "Expected another line after " + line;}
		
		public static String EXPECTED_META_SUFFIX(int line) {return "Expected " + IDENTIFIERS.META_SUFFIX + " or " + IDENTIFIERS.META_MULTILINE + " at the end of line " + line;}
		
		public static String UNKNOWN_VARIABLE(String variable, int line) {return "Unknown variable \"" + variable + "\" on line " + line;}
		
		public static String UNKNOWN_LINE_META(String tag, int line) {return "Unknown line meta tag \"" + tag + "\" on line " + line;}
		
		public static String UNKNOWN_INLINE_META(String tag, int line) {return "Unknown inline meta tag \"" + tag + "\" on line " + line;}
		
		public static String NOT_ENOUGH_ARGUMENTS(String tag, int expected, int line) {return "Expected " + expected + " arguments for tag " + tag + " on line " + line;}
		
		public static String NOT_ENOUGH_ARGUMENTS_AT_LEAST(String tag, int expected, int line) {return "Expected at least " + expected + " arguments for tag " + tag + " on line " + line;}
		
		public static String NOT_A_NUMBER(int line) {return "Expected a number on line " + line;}
		
		public static String AN_ERROR_OCCURRED_WHILE_PARSING(String fileName) {return "An unexpected error occurred while reading file \"" + fileName + "\"";}
		
		public static String AN_ERROR_OCCURRED_WHILE_PARSING(String fileName, int line) {return AN_ERROR_OCCURRED_WHILE_PARSING(fileName) + " on line " + line;}
		
		public static final String UNEXPECTED_ERROR_WHILE_INITIALIZING = "An unexpected error occurred while initializing";
		
		public static final String COULD_NOT_CREATE_DIRECTORY = "Could not create directory";
	}
}
