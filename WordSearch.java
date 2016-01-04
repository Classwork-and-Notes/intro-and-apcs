import java.util.*;
import java.io.*;

//Boying Tang Period 9
public class WordSearch{
    
    private char[][] grid;
    private ArrayList<String> words = new ArrayList<String>();
    
    private ArrayList<String> wordlist = loadDictionary();

    public ArrayList<String> loadDictionary() {
	String s = "zzz";
	ArrayList<String> dictionary = new ArrayList<String>();
     
	try {
	    FileReader f = new FileReader("wordlist.txt");
	    BufferedReader b = new BufferedReader(f);
 
	    while( s != null ) {
		s = b.readLine();
		if ( s != null )
		    dictionary.add(s.toUpperCase());
            }
        }
	catch (IOException e) {}
   
	return dictionary;
    }
    

    //Constructor and toString
    public WordSearch(){
	grid = new char[10][10];
    }

    public WordSearch(int rows, int cols){
	grid = new char[cols][rows];
    }

    public String toString(){
	String s = "";
	for (int i = 0; i < grid.length; i++){
	    for (int j = 0; j < grid[i].length; j++){
		s += grid[i][j] + " ";
	    }
	    s += "\n";
	}
	for (int i = 0; i < words.size(); i++){
	    s += words.get(i);
	    s += "\n";
	}
	return s;
    }

    //addWord
    public boolean addWordV(int col, int row, String s){
	if (inGrid(s)){
		System.out.println("in grid");
	    return false;
	}
	if ((row < 0) || (col < 0) || (row > 9) || (col > 9)){
		System.out.println("index err  1");
	    return false;
	}
	for (int i = 0; i < s.length(); i++){
	    if ((i + col) >= grid.length){
		System.out.println("index err");
		return false;
	    }
	    //collison check
	    System.out.println(i+row);
	    if ((grid[i+col][row]!=s.charAt(i)) & (grid[i+col][row]!=('\u0000')) ){
		System.out.println("collision");
		return false;
	    }
	}
	System.out.println("added V");
	for (int i = 0; i < s.length(); i++){
	    grid[i+col][row] = s.charAt(i);
	}
	words.add(s);
	return true;
    }	

    //col = horizontal		
    public boolean addWordH(int col, int row, String s){
	if (inGrid(s)){
		System.out.println("in grid");
	    return false;
	}
	if ((row < 0) || (col < 0) || (row > 9) || (col > 9)){
		System.out.println("index err  1");
	    return false;
	}
	for (int i = 0; i < s.length(); i++){
	    if ((i + row) >= grid.length){
		System.out.println("index err");
		return false;
	    }
	    //collison check
	    System.out.println(i+row);
	    if ((grid[col][i+row]!=s.charAt(i)) & (grid[col][i+row]!=('\u0000')) ){
		System.out.println("collision");
		return false;
	    }
	}
	System.out.println("added V");
	for (int i = 0; i < s.length(); i++){
	    grid[col][i+row] = s.charAt(i);
	}
	words.add(s);
	return true;
    }
    
    
    public boolean addWordD(int col, int row, String s){
	if (inGrid(s)){
		System.out.println("in grid");
	    return false;
	}
	if ((row < 0) || (col < 0) || (row > 9) || (col > 9)){
		System.out.println("index err  1");
	    return false;
	}
	for (int i = 0; i < s.length(); i++){
	    if (((i + col) >= grid.length) & ((i + row) >= grid.length)){
		System.out.println("index err");
		return false;
	    }	    
	    if ((grid[col+i][row+i] > 0) & (grid[col+i][row+i]!=s.charAt(i))){
		System.out.println("existing");
		return false;
	    }
	}
	System.out.println("added D");
	for (int i = 0; i < s.length(); i++){
	    grid[col+i][row+i] = s.charAt(i);
	}
	words.add(s);
	return true;
    }

    public boolean inGrid(String s){
	for (int i = 0; i < words.size(); i++){
	    if(s == words.get(i))
		return true;
	}
	return false;
    }

    public void addWords(int n){
	Random r = new Random();
	int k = r.nextInt(wordlist.size());
	String word = wordlist.get(k-1);
	for(int m = 0; m < n; m++){
	    for (int i = 0; i < grid.length; i++){
		for (int j = 0; j < grid[i].length; j++){
		    System.out.println(i);
		    System.out.println(j);
		    addWordH(i,j,word);
		    addWordV(i,j,word);
		    addWordD(i,j,word);
		}
	    }
	    k = r.nextInt(wordlist.size());

	}
    }

    //fillGrid
    public void fillGrid(){
	Random r = new Random();
	char alpha = (char)(r.nextInt(26)+97);
	for (int i = 0; i < grid.length; i++){
	    for (int j = 0; j < grid[0].length; j++){
		if ((grid[i][j] > 122) || (grid[i][j] < 97)){
		    grid[i][j] = alpha;
		    alpha = (char)(r.nextInt(26)+97);
		}
	    }
	}
    }

    public static void main(String[] args){
	WordSearch ws = new WordSearch();
        
        //working horizontal words
        ws.addWordH(0, 0, "hello");
        ws.addWordH(2, 4, "batman");
        ws.addWordH(5, 1, "apple");

        //Horizontal index error checking
        ws.addWordH(-2, 4, "joker");
        ws.addWordH(10, 4, "unicorn");  
        ws.addWordH(3, -1, "cowboys");
        ws.addWordH(5, 8, "dogs");

        //horizontal collision checking
        ws.addWordH(5, 3, "plow");
        ws.addWordH(2, 0, "neato");
        
	
        //working vertical words
        ws.addWordV(1, 0, "nice");
        ws.addWordV(4, 9, "yankee");
        ws.addWordV(4, 4, "old");
	  
        //Verical index error checking
        ws.addWordV(-2, 4, "joker");
        ws.addWordV(7, 4, "unicorn");   
        ws.addWordV(3, -1, "cowboys");
        ws.addWordV(5, 20, "dogs");
        
        //vertical collision checking
        ws.addWordV(0, 4, "ores");
        ws.addWordV(4, 9, "goober");       
	
        //working diagonal words
        ws.addWordD(7, 0,  "cat");
        ws.addWordD(0, 0, "home");
        ws.addWordD(0, 3, "loam");
 
        //Diagonal index error checking
        ws.addWordD(-2, 0,  "cat");
        ws.addWordD(3, -1,  "whelm");
        ws.addWordD(7, 7,  "after");    

        //Diagonal collision checking
        ws.addWordD(0, 4, "ores");
        ws.addWordD(4, 4, "oats");

        System.out.println(ws);
        
        ws.fillGrid();
        System.out.println(ws);
    }
}