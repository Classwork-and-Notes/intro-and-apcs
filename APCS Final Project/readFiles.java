import java.util.*;
import java.io.*;

public class readFiles {        

    String path = ""; //a string xx/yy/zz/ use for path
    ArrayList<String> term = new ArrayList();
    ArrayList<String> def = new ArrayList();
    
    public Test(){
	term = loadFile(path + "term.txt");
	def = loadFile(path + "def.txt");

    }

    public Test(String s){
        path = s;
	term = loadFile(path + "term.txt");
	def = loadFile(path + "def.txt");

    }

    //code to read from file and return arraylist given filename as stirng   
    public ArrayList<String> loadFile(String k) {
       	System.out.println(k);
        String s = "zzz";
        ArrayList<String> file = new ArrayList<String>();

        try {
            FileReader f = new FileReader(k);
            BufferedReader b = new BufferedReader(f);

            while( s != null ) {
                s = b.readLine();
                if ( s != null )
                    file.add(s);
            }
        }
        catch (IOException e) {}

        return file;
    }

    public String toString(){
	String retStr ="";
	retStr += "terms";
	for(int i = 0; i < term.size(); i++)
	    retStr += term.get(i);
	retStr += "def";
	for(int i = 0; i < def.size(); i++)
	    retStr += def.get(i);
	return retStr;
    }

    public static void main(String[] args){	
	Test t = new Test("");
	Test q = new Test("Test/");
    
	System.out.println(t);
	System.out.println(q);

	
	//t.add();
	//t.flip();
    }
}
