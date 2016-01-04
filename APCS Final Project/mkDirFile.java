import java.util.*;
import java.io.*;

public class mkDirFile {
    
    //create folder with name s given string s
    //"xx" creates folder name xx at current location
    //"xx/yy" creates folder yy in folder xx
    //name + "_" + some other shit

    public void mkDir(String s){
	File stockFile = new File(s);
	boolean flag = false;
	
	try {
	    flag = stockFile.mkdir();
	} catch (SecurityException Se) {
	    System.out.println("Error while creating directory in Java:" + Se);
	}
	
	if (flag)
	    System.out.println("Directory created successfully");
	else
	    System.out.println("Directory was not created successfully");
    }
    
    //"xx/yy.txt" creates yy.txt in folder xx    
    public void mkFile(String s){
	File stockFile = new File(s);
	boolean flag = false;
	
	try {
	    flag = stockFile.createNewFile();
	} catch (IOException ioe){
	    System.out.println("Error while Creating File in Java" + ioe);
	}

	System.out.println("File" + stockFile.getPath() + " created ");
       
}

    public static void main(String[] args){
	mkDirFile m = new mkDirFile();
	t.mkDir("testing");
	t.mkFile("testing/testing12.txt");
    }
}