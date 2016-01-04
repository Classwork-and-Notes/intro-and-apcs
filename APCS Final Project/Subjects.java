import java.util.*;
import java.io.*;

public class Subjects{

    Scanner s = new Scanner(System.in);
    int pos = 0;
    int ray = 1;
    String path = "";
    ArrayList<String> term = loadFile(path + "term.txt");
    ArrayList<String> def = loadFile(path + "def.txt");

    public Subjects(){
	term = loadFile(path + "term.txt");
	def = loadFile(path + "def.txt");
    }

    public Subjects(String s){
	path = s;
	term = loadFile(path + "term.txt");
	def = loadFile(path + "def.txt");

    }

    //code to read from file and return arraylist given filename as stirng
    public ArrayList<String> loadFile(String k) {
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

    public void addNotes(){
	
        String input = "";

	while (!input.equals("quit")){	

	    //term
	    System.out.println("Enter Term");
	    input = s.nextLine();

	    while (input.equals("")){
		System.out.println("Nothing Entered");
		input = s.nextLine();
	    }
	    
	    //only chance to quit 
	    if(input.equals("quit")){
		break;
	    }
		
	    try {
		File terms = new File (path + "term.txt");
		FileWriter fw = new FileWriter(terms.getAbsoluteFile(), true);
		BufferedWriter bw = new BufferedWriter(fw);
		bw.write(input);
		bw.newLine();
		bw.close();
	    } catch (IOException e) {
		System.out.println("Error" + e);
	    }
	    
	    //def
	    System.out.println("Enter Definition");
	    input = s.nextLine();
	    
	    while (input.equals("")){
	    System.out.println("Nothing Entered");
	    input = s.nextLine();
	    }

	    try {
		File defs = new File(path + "def.txt");
		FileWriter fw2 = new FileWriter(defs.getAbsoluteFile(), true);
		BufferedWriter bw2 = new BufferedWriter(fw2);
		bw2.write(input);
		bw2.newLine();
		bw2.close();
	    } catch (IOException e) {
		System.out.println("Error" + e);
	    }
	term = loadFile(path + "term.txt");
	def = loadFile(path + "def.txt");
    }
}
	
    public void study(){
	//code to print a random def/term and let them enter the corresponding def/term	
	if(term.size() > 0){
	    int score = 0;
	    int runs = 0;	
		
		
	    ArrayList<Integer> usedIndex= new  ArrayList<Integer>();
		for(int i=0; i<def.size(); i++){
			usedIndex.add(i);
		}
		
	    while(runs < term.size()){
		String scoreLine="Correct:" + score +"/"+term.size();
		Random rand = new Random();
	 	Integer randIndex;
		
		
		while(!usedIndex.isEmpty()){
		    randIndex = usedIndex.get(rand.nextInt(usedIndex.size()));		
		    String defStudy = def.get(randIndex);
		    String termStudy = term.get(randIndex);	
		
		    System.out.println("Here is the definition: "+defStudy+"\n"+"What is the term?");
		
		    String termInput = s.nextLine();	
			while (termInput.equals("")){
			System.out.println("Nothing Entered");
			termInput = s.nextLine();
			}
		    if (termInput.equalsIgnoreCase(termStudy)){
			score++;
			System.out.println("Correct! Correct so far: "+score+"\n"+"<hit Enter>");
			s.nextLine();
			}
		    else {
			System.out.println("WRONG! The Answer is: "+termStudy+"\n"+"<hit Enter>");
			s.nextLine();
		    }
		    usedIndex.remove(randIndex);
		}
		runs++;
	    }
	    System.out.println("You finished taking the test. You answered "+score+"/"+term.size()+ " correct");	
	}

	else{
	    System.out.println("No existing terms. Go add notes."); 
}

    }


    //visual effect of flipping flashcards! like quizlet
    public void flip(){

	if(term.size() > 0){
	    System.out.println("\n"+"Use WASD keys to navigate flashcards");
	    System.out.println("Term:");
	    System.out.println(term.get(0)+"\n");
	
	    String direct = s.next().toLowerCase();
		outerLoop:
	    while (!direct.equals("quit")){
		if (direct.equals("w") || direct.equals("s")){
		    ray = 3 - ray;
		}
		else if(direct.equals("d")){
		    if (pos == term.size() - 1)
			pos = 0;
		    else{	   
			pos++;
		    }
		}
		else if(direct.equals("a")){
		    if (pos == 0)
			pos = term.size() - 1;
		    else{	    
			pos--;
		    }
		}
		else
		    System.out.println("Invalid Entry");
		

		if (ray == 1){
		    System.out.println("Term:");
		    System.out.println(term.get(pos)+"\n");
		}
		else{ 
		    System.out.println("Definition:");
	            System.out.println(def.get(pos)+"\n");
		    	
		}
		direct = s.next().toLowerCase();
	    }
	}
    }

}
