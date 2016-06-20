import java.util.*;
public class OrderedArrayList{

    private ArrayList<Comparable> data = new ArrayList<Comparable>();

    public void add(Comparable value){
	int i = 0;
    while ( i < data.size() && value.compareTo( data.get(i)) > 0 )
	    i++;
	data.add(i,value);
    }

    public String toString(){
	return	data.toString();
    }

    public int size(){
	return data.size();
    }

    public Comparable get(int i){
	return data.get(i);
    }
    
    public static void main(String[] args){
	OrderedArrayList oal = new OrderedArrayList();

	Comparable x = new Integer(5);
	Comparable y = new Integer(10);
       	Comparable a = new String("heyy");
	Comparable b = new String("yoo");
	
	oal.add(a);
       	oal.add(b);
       	oal.add(x);
	oal.add(y);

	

	
	System.out.println(oal.toString());
    }
}
