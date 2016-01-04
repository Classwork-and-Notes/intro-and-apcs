import java.util.*;

public class Minion extends Character {

    int craziness;
    boolean crazy;
    int left;
    int right;
    int back;
    int forward;
    boolean dead;    
    String path;
    String msg;

    public Minion(String n){
	super(n);
	hp = 100;
	atk = 45;
	def = 30;
	craziness = 10;
	crazy = false;
	dead = false;
	left = -1;
	right = -1;
	forward = -1;
	back = -1;
    }
	     
    public void attack(Character c) {
	if (crazy) {
	    crazAttack(c);
	} else {
	    regAttack(c);
	}
    }

    public void regAttack(Character c) {
	double m = Math.random();
	if (m > .5) {
            c.hp -= 2*atk - c.def;
            if (m < .75) {
                System.out.println("The Minion played a prank on you");
            } else {
                System.out.println("The Minion hit you with a wrench");
            }
        }
        else if (m > .25) {
            c.hp -= 2*atk + craziness - c.def;
            System.out.println("The minion fired a rocket at you");
        }
        else if (m > .05) {
            hp -= Math.abs(atk - def);
            System.out.println("The minion tried to hit you with a wrench but fell and hit itself");
	} else {
            crazy = true;
	    craziness += 10;
	    def += 10;
	    System.out.println("The minion injected itself with steriods and became purple!");
        }
    }

    public void crazAttack(Character c) {
	double m = Math.random();
	if (m > .5) {
	    c.hp -= atk + 5*m*craziness - def;
	    System.out.println("The minion bit you");
	}
	else if (m > .25) {
	    c.hp -= 10*(m+1)*craziness - def;
	    System.out.println("The minion stomped you into the ground");
	}
	else {
	    hp -= craziness;
	    System.out.println("The minion dropped a chainsaw on itself");
	}
    }

    public void makePath(int l, int r, int f, int b, String p){
	left=l;
	right=r;
	forward=f;
	back=b;
	path=p;
    }

    public void message(String s){
	msg=s;
	//System.out.println(msg);
    }
}
