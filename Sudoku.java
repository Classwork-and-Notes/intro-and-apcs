import java.io.*;
import java.util.*;

public class Sudoku{
    char [][] board;
    int size;
    int box;

    public Sudoku() {
	size = 4;
	box = (int)Math.sqrt(size);
	board = new char[size][size];

	try {    
	    Scanner sc = new Scanner(new File("sudoku-small.dat"));
	    int j=0;

	    while (sc.hasNext()) {
		String line = sc.nextLine();
		for (int i = 0; i < size; i++) {
		    board[i][j] = line.charAt(i);
		}
		j++;
	    }
	}
	catch (Exception e) {}
    }

    public String toString() {
	String s = "";
	for (int y = 0;y < size; y++) {
	    for (int x = 0; x < size; x++)
		s = s + board[x][y];
	    s = s + "\n";
	}
	return s;
    }

    public boolean check(int x, int y, char num){
	for (int i = 0; i < size; i++)
	    if(board[i][y] == num)
		return false;
	for (int k = 0; k < size; k++)
	    if(board[x][k] == num)
		return false;
	/////
	for(int j = x%box; j < box; j++)
	    if(board[y][x + j] == num)
		return false; 
	for(int j = x%box; j == 0; j--)
	    if(board[y][x - j] == num)
		return false;
	/////
	for(int j = y%box; j < box; j++)
	    if(board[y + j][x] == num)
		return false;
	for(int j = y%box; j == 0; j--)
	    if(board[y - j][x] == num)
		return false;
	/////
	board[x][y] = num;
	return true;
    }

    public void solve() {
	solveHelper( 1, 1 );
    }

    public boolean solveHelper( int x, int y ) {
	
	if ( board[x][y] == '$' )
	    return true;
	if ( board[x][y] != '-' )
	    return false;
	
	board[x][y] = '+';
	if ( solveHelper( x + 1, y ) )
	    return true;

	else if ( solveHelper( x, y + 1 ) )
	    return true;
	
	else if ( solveHelper( x - 1, y ) )
	    return true;

	else if ( solveHelper( x, y - 1 ) )
	    return true;

	else {
	    board[x][y] = '.';
	    return false;
	}    
    }
    
    public static void main(String[] args){
	Sudoku m = new Sudoku();
	System.out.println(m.check(1,1,'1'));
	System.out.println(m);
    }
}
