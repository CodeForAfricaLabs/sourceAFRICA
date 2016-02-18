package org.documentcloud.pdftailor;

import java.io.FileOutputStream;
import java.io.IOException;
import java.util.regex.Pattern;
import java.util.Arrays;
import java.util.List;
import java.util.Iterator;

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.pdf.PdfCopy;
import com.itextpdf.text.pdf.PdfReader;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.text.exceptions.BadPasswordException;

import com.beust.jcommander.Parameter;
import com.beust.jcommander.JCommander;
import com.beust.jcommander.MissingCommandException;

public class PdfTailor {
  
  public static void main( String[] args ) throws IOException, DocumentException {

    // Initialize the JCommander parsers
    JCommander cli = new JCommander();
    StitchCommand   stitch   = new StitchCommand();
    UnstitchCommand unstitch = new UnstitchCommand();

    // Add our Stitch and Unstitch commands to the parser
    cli.addCommand("stitch",   stitch);
    cli.addCommand("unstitch", unstitch);

    // When called with no arguments display the usage information.
    if (args.length == 0) { 
      usage(); 
    } else {
      try { 
        // Parse the provided arguments.
        cli.parse(args);
        String command = cli.getParsedCommand();
        if      (command.equals("stitch"))   { stitch(stitch); } 
        else if (command.equals("unstitch")) { unstitch(unstitch); }
        else                                 { usage(); }
        
      } catch (MissingCommandException unrecognizedCommand) {
        // and if unrecognized, display the usage information.
        usage();
      }
    }
  }

  public static String VERSION       = "0.0.5";
  public static String USAGE_MESSAGE = "pdftailor stitches and unstitches pdfs.\n\n"                        +
                                       "Version: " + VERSION + "\n\n"                                       +
                                       "Usage:\n"                                                           +
                                       "  pdftailor COMMAND [OPTIONS] <pdf(s)>\n"                           +
                                       "  Main commands:\n"                                                 +
                                       "    stitch, unstitch\n\n"                                           +
                                       "Options:\n"                                                         +
                                       "  -o, --output\n"                                                   +
                                       "    The file name or file pattern to which output is written.\n"    +
                                       "    For commands like unstitch which will write multiple files\n"   +
                                       "    a pattern including \"%d\" can be used to specify a template\n" +
                                       "    for where files should be written (e.g. ./foo/bar_%d.pdf).\n\n" +
                                       "Example:\n"                                                         +
                                       "  pdftailor stitch --output merged.pdf a.pdf b.pdf\n"               +
                                       "  pdftailor unstitch --output merged_page_%d.pdf merged.pdf\n";

  public static void usage() {
   System.out.println(USAGE_MESSAGE);
  }

  // Stitch together an ordered list of pdfs into a single pdf.
  public static void stitch( StitchCommand cli ) throws IOException, DocumentException {
    String outputName = cli.output;

    Document document = new Document();
    PdfCopy writer = new PdfCopy(document, new FileOutputStream(outputName));
    document.open();

    // Loop over all of the pdfs specified on the commandline
    // read out their contents and concatenate them
    // in the order specified
    PdfReader reader;
    Iterator<String> pdfPaths = cli.files.iterator();
    while (pdfPaths.hasNext()) {
      String path = pdfPaths.next();
      reader = new PdfReader(path);
      for ( int pageNumber = 0; pageNumber < reader.getNumberOfPages(); ) {
        writer.addPage(writer.getImportedPage( reader, ++pageNumber ));
      }
      // make sure to free the reader to prevent memory leak
      // especially for very large PDFs.
      writer.freeReader(reader);
    }
    document.close();
  }

    // The stitch command parser.
    static class StitchCommand {
      @Parameter(description = "The list of files to stitch together.")
      private List<String> files;
    
      @Parameter(names = {"--output", "-o"}, description = "The filename to write to.", required = true)
      private String output;
    }

  // unstitch a pdf into its constitutent pages.
  public static void unstitch( UnstitchCommand cli ) throws IOException, DocumentException {
    // use JCommander's default file list to get the file to split.
    String readerPath = cli.files.get(0);
    PdfReader reader = null;
    try { 
      reader = new PdfReader(readerPath);
    } catch (BadPasswordException e) { 
      System.out.println("Error: Encrypted PDF");
      System.exit(1);
    }
    
    // Loop over the document's pages by page number.
    for ( int pageNumber = 0; pageNumber < reader.getNumberOfPages(); ) {
      pageNumber++;

      Document document = new Document();
      String outputName;
      if (cli.output != null && cli.output.length() > 0) { outputName = cli.output; } else { outputName = readerPath; }
      PdfCopy writer = new PdfCopy(document, new FileOutputStream(outputPath(outputName, pageNumber)));

      document.open();
      writer.addPage(writer.getImportedPage(reader, pageNumber));
      document.close();
      writer.close();
    }
  }

    // The unstitch command parser.
    static class UnstitchCommand {
      @Parameter(description = "The file to unstitch.")
      private List<String> files;

      @Parameter(names = {"--output", "-o"}, description = "The filename pattern to write to. (e.g. mydir/file_%d_name.pdf)")
      private String output;
    }

  // Return a file path for page when provided with a page number and
  // either an existing file path, or a path template.
  protected static String outputPath( String outputName, int pageNumber ) {
    Pattern templatePattern = Pattern.compile("%d");
    Pattern filePattern = Pattern.compile("^(.+)\\.pdf$");
    String path;

    // if outputName contains %d, we assume it's a template.
    if ( templatePattern.matcher(outputName).find() ){
      // replace %d with the page number.
      path = String.format(outputName, pageNumber);
    } else if ( filePattern.matcher(outputName).find() ) {
    // if outputName is a pdf, chop off the file ending and insert the page number before reattaching.
      path = filePattern.matcher(outputName).replaceFirst("$1_" + pageNumber + ".pdf");
    } else {
      // otherwise we'll just append the page number and add the pdf file extension.
      path = outputName + "_" + pageNumber + ".pdf";
    }
    return path;
  }

}
