import java.util.Random;

public class Character {

    //Instance Variables
    int hp;
    int atk;
    int def;
    int room;
    int sp;
    int maxhp;
    int blockedAmount;
    String name;
    String msg;


    public Character(String n) {
	name = n;
    }

    public void attack(Character c) {
	c.hp -= atk;
    }

    public void sattack(Character c) {
	c.hp-= 2*atk;
    }
    
    public boolean canSpAtk() {
	return sp == 3;
    }

    public void message(String m){
	msg = m;
    }

    public void block() {
	if (blockedAmount > 1) {
	    System.out.println("Stop blocking all the time. BE A MAN!");
	}
	else {
	    System.out.println("You successfully blocked an attack. WOOO!");
	    blockedAmount++;
    
	}
    }

 
    public boolean isDead(){
	return hp <= 0;
    }

    public void boost(){
	Random holder = new Random();
	int x = holder.nextInt(3);
	int a = (holder.nextInt(5)) + 1;
	if (x==0) {
	    hp += a;
	    maxhp += a;
	    System.out.println("Your hp was increased by" + a);
	}
	else if (x==1)  {
	    atk += a;
	    System.out.println("Your atk was increased by" + a);
	}
	else {
	    def += a;
	    System.out.println("Your def was increased by" + a);
	}
    }
    
    public String toString(){
	String s = "";
	s+= "-------------------ENEMY'S STATS-------------------- \n \n \n";
	s+= "HP: " + hp + "\n \n \n";
	return s;
    }

    public void heal(){
	Random holder = new Random();
	int a = holder.nextInt(6);
	if (a > 2) {
	    System.out.println("Hey look! You got restored to full health!");
	    hp = maxhp;
	}
    }
}
