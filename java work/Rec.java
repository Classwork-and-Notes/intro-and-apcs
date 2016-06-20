import java.util.*;

public class Rec{
    
    public static int[] comp(int n, int[] nums){
	if (n == 1||n == 0){
	    nums[1] = 1;
	    nums[0] = 0;
	}
	else{
	    if (nums[n - 1] == 0)
		nums = comp(n - 1, nums);
	    else if (nums[n - 2] == 0)
		nums = comp(n - 2, nums);
	    nums[n] = nums[n - 1] + nums[n - 2];
	}
	return nums;
    }
    
    public static int fib(int n, int[] nums){
	return comp(n, nums)[n];
    }

    public static int fact(int i){
	if (i > 1){
	    return i * fact(i - 1);
	}
	else {
	    return 1;
	}
    }
    
    public static double sqrt(int n, double guess){
	if ((Math.abs((guess * guess) - n)) < 0.001){
	    return guess;
	}
	else 
	    return sqrt(n, (n / guess + guess) / 2);
    }

    public static ArrayList<String> scramble(String s){
	int poss = fact(s.length());
	ArrayList<String> str = new ArrayList<String>();
	
	char data[] = s.toCharArray();
	
	Random rnd = new Random();
	for (int i = data.length - 1; i > 0; i--)
	    {	
		int index = rnd.nextInt(i + 1);
		char a = data[index];
	data[index] = data[i];
	data[i] = a;
	    }       
	
	String b = new String(data);

	if (str.size() < poss && !find(b, str)){
	    str.add(b);
	    scramble(s);
	}
	return str;
    }

    public static boolean find(String s, ArrayList<String> str){
	for (int i = 0; i < str.size(); i++){
	    if (str.get(i).equals(s)){
		return true;
	    }
	}
	return false;
    }
				  
    public static void main(String[] args){

	int[] i = new int[100];

	System.out.println(fib(3, i));
	System.out.println(fact(1));
	System.out.println(sqrt(100, 5));
	System.out.println(scramble("cat"));

    }
}