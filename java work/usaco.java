public class usaco{

    int[][] pasture = new int[][];
    String struct = "4 6 22 2
28 25 20 32 34 36
27 25 20 20 30 34
24 20 20 20 20 30
20 20 14 14 20 20
1 4 4
1 1 10";

    public int findmax(int x, int y){
	
	int ret = 0;

	for (int i ; i < x + 2; i++){
	    for (int k ; i < y + 2; k++){
		if (pasture[i][k] > ret)
		    ret = pasture[i][k];
	    }
	}
	
	return ret;
    }

    public void stomp(int x, int y, int stomp){

	int level = findmax(x, y) - stomp;
	
	for (int i; i < x + 2; i++){
	    for (int k ; i < y + 2; k++){
		if (pasture[i][k] > level)
		    pasture[i][k] = level;
	    }
	}
    }

    public void addWater(int E){
	
	for (int i; i < pasture.length(); i++){
	    for (int k ; i < pasture[i].length(); k++){
		if (pasture[i][k] > E)
		    pasture[i][k] = 0;
		else 
		    pasture[i][k] -= E;
	    }
	}
    }

    public int calc(){
	
	int sum = 0;
	
	for (int i; i < x + 2; i++){
	    for (int k ; i < y + 2; k++){
		    sum += pasture[i][k];
	    }
	}
	
	return sum;
    }

    public int volume()
	return calc() * 72 * 72;

    public static void main(String[] args){
    
	stomp(x, x, x);
	stomp(x, x, x);
	addWater();
	System.out.println(volume());
    }
}