import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class regex {
  public static void main(String[] args) {
    long t = System.currentTimeMillis();
    long k = 1000;
    String file = "../../files/twitter.out";
    int ok = 0;
    int no = 0;

    //                              id     user   name   date
    //Pattern pat = Pattern.compile("^\\d+\\t\\w+\\t\\w+\\t20\\d\\d\\-.*$");
    Pattern pat = Pattern.compile("^\\d+\\t\\w+\\t\\w+\\t.*$");

    try {
      BufferedReader br = new BufferedReader(new FileReader(file));
      String line;
      while ((line = br.readLine()) != null) {
        Matcher matcher = pat.matcher(line);
        if(matcher.find()) {
          ok = ok + 1;
          //System.out.print(ok);
        } else {
          no = no + 1;
          //System.out.println(line);
          //System.out.println(no);
        }
      }
    } catch(Exception e) {
      System.out.println("nope");
    }
    System.err.println("ok: " + ok);
    System.err.println("no: " + no);
    System.err.println("time: " + (System.currentTimeMillis()-t) + "ms");
    System.err.println("END");
  }
}
