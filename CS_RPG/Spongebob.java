/// Class-Spongebob \\\

import java.util.*;

public class Spongebob extends Character {

    // Constructor \\
    public Spongebob(String n) {
        super(n);
        hp = 100;
        atk = 70;
        def = 70;
        room = 0;
	sp = 0;
    }

    // Attack and S. Attack \\
    public void attack(Character c) {
	blockedAmount = 0;
	c.hp -= atk - c.def;
	if (sp < 3) {
	    sp += 1;
	}
	System.out.println("Spongebob used spatula! It did " + (atk - c.def) + " damage.");
    }

    public void sattack(Character c) {
	blockedAmount = 0;
	if (this.canSpAtk() ) {
		c.hp -= atk;
		System.out.println("Spongebob unleashed the Krabby Patties! It did" + " " +  atk + " "  +  "points of devastating damage!");
		sp = 0;
	}
	else {
	    System.out.println("Insufficient SP! Need to attack more.");
	}
    }
    
    public String toString(){
	String s = "";
	s += "---------------------YOUR STATS------------------- \n \n \n";
	s+= "HP: " + hp +"\n";
	s+= "SP: " + sp +"\n \n \n";
	return s;
    }
}

