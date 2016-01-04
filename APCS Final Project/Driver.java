import java.io.*;
import java.util.*;

public class Driver {

    private void start() {
	Scanner s = new Scanner(System.in);
	String name;
	System.out.println("What is your first name?");
	name = s.next() + "_";
	System.out.println("What is your last name?");
	name += s.next();
        File dir = new File(name);
	if (!dir.exists()) {
	    File dmath = new File(name + "/Math");
	    File dsci = new File(name + "/Science");
	    File deng = new File(name + "/English");
	    File dlan = new File(name + "/Language");
	    File dele = new File(name + "/Electives");
	    File dss = new File(name + "/Social_Studies");
	    File dtec = new File(name + "/Tech");
	    dmath.mkdirs();
	    dsci.mkdir();
	    deng.mkdir();
	    dlan.mkdir();
	    dele.mkdir();
	    dss.mkdir();
	    dtec.mkdir();
	    try {
		File mathTerm = new File(name + "/Math/term.txt");
		File mathDef = new File(name + "/Math/def.txt");
		File sciTerm = new File(name + "/Science/term.txt");
		File sciDef = new File(name + "/Science/def.txt");
		File engTerm = new File(name + "/English/term.txt");
		File engDef = new File(name + "/English/def.txt");
		File lanTerm = new File(name + "/Language/term.txt");
		File lanDef = new File(name + "/Language/def.txt");
		File elecTerm = new File(name + "/Electives/term.txt");
		File elecDef = new File(name + "/Electives/def.txt");
		File ssTerm = new File(name + "/Social_Studies/term.txt");
		File ssDef = new File(name + "/SocialStudies/def.txt");
		File tecTerm = new File(name + "/Tech/term.txt");
		File tecDef = new File(name + "/Tech/def.txt");	
		mathTerm.createNewFile();
		mathDef.createNewFile();
		sciTerm.createNewFile();
		sciDef.createNewFile();
		engTerm.createNewFile();
		engDef.createNewFile();
		lanTerm.createNewFile();
		lanDef.createNewFile();
		elecTerm.createNewFile();
		elecDef.createNewFile();
		ssTerm.createNewFile();
		ssDef.createNewFile();
		tecTerm.createNewFile();
		tecDef.createNewFile();
	    } catch (IOException ex) {
		System.out.println("Error" + ex);
	    }
	}
	ArrayList<String> codes = new ArrayList<String>();
	codes.add("Math");
	codes.add("Science");
	codes.add("English");
	codes.add("Language");
	codes.add("Electives");
	codes.add("Social_Studies");
	codes.add("Tech");
	System.out.println("What subject would you like to review?");
	System.out.println("Please choose from the following");
	System.out.println("Math, Science, English, Language, Electives, Social_Studies, Tech");
	boolean selected = false;
	String sub = s.next();
	while (!selected){
	    if (codes.contains(sub)) {
		selected = true;
	    }
	    else{
		System.out.println("We didn't quite catch that.");
		System.out.println("Please restate your choice with the same capitalization and spelling we have provided.");
		sub = s.next();
	    }
	}	
	System.out.println("Are you going to (1) Take a Test, (2) Add Notes (3) Look at Flashcards? Input the number next to your choice.");
	Subjects sj = new Subjects(name + "/" + sub + "/");
	String choice = s.next().toLowerCase();
	while (!choice.equals("quit")){
	    if (choice.equals("3")){
		sj.flip();
	    }
	    else if (choice.equals("2")){
		sj.addNotes();
	    }
	    else if (choice.equals("1")){
		sj.study();
	    }
	    else {
	    System.out.println("Please input an integer from one to three to specify your choice");
	    choice = s.next().toLowerCase();
	    }
	    System.out.println("Choose option");
	    System.out.println("Are you going to (1) Take a Test, (2) Add Notes (3) Look at Flashcards? Input the number next to your choice.");
	    choice = s.next().toLowerCase();
	}
    }

    public static void main (String args[]) {
	Driver d = new Driver();
	d.start();
    }
}
