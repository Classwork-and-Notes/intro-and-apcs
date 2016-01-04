public class LinkedList {

    private LNode front;

    public LinkedList(LNode node){
	front = node;
    }

    public String toString(){
	String str = (String)front.getData();
	if (front.getNext() == null){
	    return str;
	}
	else{
	    LinkedList list = new LinkedList(front.getNext());
	    return list.toString();
	}
    }

    public void add(char c){	
	if (front.getNext() == null){
	    LNode node = new LNode(c);
	    front.setNext(node);
	}
	else {
	    LinkedList list = new LinkedList(front.getNext());
	    list.add(c);
	}
    }

    public void add(char c, int i){
	if (i == 0){
	    LNode node = new LNode(c);
	    node.setNext(front.getNext());
	    front.setNext(node);
	}
	else{ 
	    LinkedList list = new LinkedList(front.getNext());
	    list.add(c, i - 1);
	}
    }

    public char get(int i){
	if (i == 0)
	    return front.getData();
	else{
	    LinkedList list = new LinkedList(front.getNext());
	    return list.get(i - 1);
	}
    }

    public void set(char c, int i){
	if (i == 0)
	    front.setData(c);
	else{
	    LinkedList list = new LinkedList(front.getNext());
	    list.set(c, i - 1);
	}
    }

    public void remove(int i){
    	if (i == 1)
	    front.setNext(front.getNext().getNext());
	else{
	    LinkedList list = new LinkedList(front.getNext());
	    list.remove(i - 1);
	}
    }

    public int size(){
	int size = 1;
	if (front.getNext() == null)
	    return size;
	else{
	    LinkedList list = new LinkedList(front.getNext());
	    return list.size();
	}
    }
    
    public static void main(String[] args){

	LNode a = new LNode('a');
	LNode b = new LNode('b');
	LNode c = new LNode('c');
	a.setNext(b);
	b.setNext(c);

	LinkedList ln = new LinkedList(a);
	System.out.println(ln);    
}
}