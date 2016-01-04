import java.util.*;
import java.io.*;

public class writeToFiles {        

    String path = "";
    
    public Test(){
    }

    public Test(String s){
        path = s;
    }

    Scanner s = new Scanner(System.in);

    public void addNotes(){
	System.out.println("Enter Term");
	String term = s.next();
	
	try {
	    File terms = new File (path + "term.txt");
	    FileWriter fw = new FileWriter(terms.getAbsoluteFile(), true);
	    BufferedWriter bw = new BufferedWriter(fw);
	    bw.newLine();	    
	    bw.write(term);
	    bw.close();
	} catch (IOException e) {
	    System.out.println("Error" + e);
	}


        System.out.println("Enter Definition");
        String def = s.next();
	
	try {
	    File defs = new File(path + "def.txt");
	    FileWriter fw2 = new FileWriter(defs.getAbsoluteFile(), true);
	    BufferedWriter bw2 = new BufferedWriter(fw2);
	    bw2.newLine();	    
	    bw2.write(def);
	    bw2.close();
	} catch (IOException e) {
            System.out.println("Error" + e);
	}
    }

    public static void main(String[] args){
	Test t = new Test("Test/");
	Test q = new Test();

	t.addNotes();
    }
}

