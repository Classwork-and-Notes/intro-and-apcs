import java.util.*;

public class Magikarp extends Character {
    
    public Magikarp(String n) {
	super(n);
	hp = 100;
	atk = 100;
	def = 70;
	room = 0;
	sp = 0;
    }

    public void attack(Character c){
	blockedAmount = 0;
	if (Math.random() > 0.50) {
	    if (Math.random() > .80) {
		c.hp -= (2 *atk) - c.def;
		System.out.println("Critical hit! Tackle was super effective!");
	    }
	    else{
		c.hp -= atk - c.def;
		System.out.println("Magikarp used tackle!");
	    }
	    if (sp < 3) {
		sp++;
	    }
	}
	else {
	    System.out.println( "Magikarp used splash!"); 
	}
    }


    public void sattack(Character c) {
	blockedAmount = 0;
	if (canSpAtk()) {
	    c.hp -= atk;
	    System.out.println("Tons of Damage! Hydro Pump was super effective!");
	    sp = 0;
	}
	else {
	    System.out.println("You don't have enough sp for your final move!");
	}

    }

    public String toString(){
	String s = "";
	s += "-------------------YOUR CURRENT INFO------------------ \n \n \n";
	s += "Your hp: " + hp + "\n";
	s += "Your Sp: " + sp + "\n \n \n";
	return s;
    }
}
