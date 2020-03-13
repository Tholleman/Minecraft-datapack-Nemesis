package builder.zipper;

import java.io.*;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

public class Zipper
{
	private Zipper() {}
	
	/**
	 * A constants for buffer size used to read/write data
	 */
	private static final int BUFFER_SIZE = 4096;
	
	/**
	 * Compresses a list of files to a destination zip file
	 *
	 * @param listFiles   A collection of files and directories
	 * @param destZipFile The path of the destination zip file
	 */
	public static void zip(File[] listFiles, String destZipFile) throws IOException
	{
		try (ZipOutputStream zos = new ZipOutputStream(new FileOutputStream(destZipFile)))
		{
			for (File file : listFiles)
			{
				if (file.isDirectory())
				{
					zipDirectory(file, file.getName(), zos);
				}
				else
				{
					zipFile(file, zos);
				}
			}
			zos.flush();
		}
	}
	
	/**
	 * Adds a directory to the current zip output stream
	 *
	 * @param folder       the directory to be  added
	 * @param parentFolder the path of parent directory
	 * @param zos          the current zip output stream
	 */
	private static void zipDirectory(File folder, String parentFolder, ZipOutputStream zos) throws IOException
	{
		assert folder != null;
		assert folder.isDirectory();
		//noinspection ConstantConditions
		for (File file : folder.listFiles())
		{
			if (file.isDirectory())
			{
				zipDirectory(file, parentFolder + "/" + file.getName(), zos);
				continue;
			}
			
			write(parentFolder + "/" + file.getName(), file, zos);
		}
	}
	
	/**
	 * Adds a file to the current zip output stream
	 *
	 * @param file the file to be added
	 * @param zos  the current zip output stream
	 */
	private static void zipFile(File file, ZipOutputStream zos) throws IOException
	{
		write(file.getName(), file, zos);
	}
	
	private static void write(String entry, File file, ZipOutputStream zos) throws IOException
	{
		zos.putNextEntry(new ZipEntry(entry));
		try (BufferedInputStream bis = new BufferedInputStream(new FileInputStream(file)))
		{
			byte[] bytesIn = new byte[BUFFER_SIZE];
			int read;
			while ((read = bis.read(bytesIn)) != -1)
			{
				zos.write(bytesIn, 0, read);
			}
			zos.closeEntry();
		}
	}
}
