import java.util.*;

public class Boss extends Character {

    boolean hard;
    int jarDef;

    public Boss() {
	super("Jar Jar Binks");
	hp = 100;
	atk = 40;
	def = 40;
	hard = false;
	sp = 0;
	jarDef = def;
    }

    public void attack(Character c) {
	if (def < jarDef) {
	    jarDef = def;
	}
	int damage;
	double m = Math.random();
	if (sp > 4) {
	    if (m > .5) {
		defend();
	    }
	    else {
		spAttack(c);
	    }
	} 

	else if (m > .6 && hard) {
	    System.out.println("Jar Jar Binks Charged You");
	    damage = 5*atk - 3*c.def;
	    System.out.println("It did " + damage + " damage");
	    c.hp -= damage;
	}
	else if (m > .5 && hard) {
	    System.out.println("Jar Jar Binks really annoyed you");
	    damage = 2*atk - c.def;
	    System.out.println("He did " + damage + " damage");
	    c.hp -= damage;
	    System.out.println("You are too annoyed to move now, but your sp increased");
	    c.sp += 1;
	    attack(c);
	}
	else {
	    System.out.println("Jar Jar Binks annoyed you");
	    damage = 2*atk - c.def;
	    System.out.println("It did " + damage + " damage");
	    c.hp -= damage;
	}
    if (hard) {
	   if (m < .25) {
	       sp += 2;
	   } else {
	       sp += 1;
	   }
    }
    }

    public void defend() {
	System.out.println("Jar Jar Binks recruited another soldier");
	System.out.println("His total defense increased by 20");
	def += 20;
	sp = 0;
    }

    public void spAttack(Character c) {
	System.out.println("Jar Jar Binks had his soldiers charge you");
	int damage = 2*atk + 2*(def-jarDef) - c.def;
	System.out.println("It did " + damage + " damage");
	c.hp -= damage;
	sp = 0;
    }
}
