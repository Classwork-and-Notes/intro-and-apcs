import java.util.*;
//Boying Tang, Ho Yin Ho, Matthew, Brandon
public class Game {
    public static void main(String[] args) {
	
      	System.out.println("You wake up and look around. What is this place? And what am I? (type either A for magikarp or B for spongebob");
	Scanner scan= new Scanner(System.in);

	//Choose character type
	String dude= scan.next();

	while (!dude.equals("A")&&!dude.equals("B")){
	    System.out.println("It's either A or B. Fish or sponge.");
	    dude=scan.next();
	}

	//Enter character name
	String n="";
	Character player;
	System.out.println("Wait. What's your name?");
	n=scan.next();
	if (dude.equals("A")){
	    player = new Magikarp(n);
	}
	else{
	    player = new Spongebob(n);
	}
	player.maxhp = player.hp;
	player.room = -3;
	
	//Generation of minions
	Minion[] enemies;
	enemies = new Minion[10]; 
	for (int i = 0; i < enemies.length; i++){
	    enemies[i] = new Minion("Minion");
	}
	enemies[7].hp += 60;
	enemies[7].atk += 20;

	//Generation of jarjarbinks
	Boss jarjar = new Boss();
	Boss jarjarbinks = new Boss();
	jarjarbinks.hard = true;
	jarjarbinks.hp += 80;
	jarjarbinks.atk += 50;
	jarjarbinks.def += 40;
	


	//Creating the pathways for the player
	enemies[0].makePath(1,-1,-1,-1,"to the left.");
	enemies[1].makePath(-1,0,2,-1,"forward and to the right.");
	enemies[2].makePath(-1,3,-1,1,"to the right and backward.");
	enemies[3].makePath(4,2,8,-1,"forward, to the left, and to the right.");
	enemies[4].makePath(3,5,6,-1,"forward,to the right, and to the left.");
	enemies[5].makePath(4,-1,-1,-1,"to the left.");
	enemies[6].makePath(-1,7,6,-1,"forward.");
	enemies[7].makePath(6,-1,-1,-1,"to the left.");
	enemies[8].makePath(9,-1,-1,3,"to the left and backward.");
	enemies[9].makePath(-1,8,-1,-1,"forward and to right.However, it appears that there is the door going forward is locked. Perhaps there is a key elsewhere?");

	//Creates messages when entering the room
	enemies[0].message("You enter the room. Wait... What's that yellow thing over there? Is that a Minion? It hits you and you shout. What was that for? Oh well, no one likes Minions anyways. 1 more dead won't hurt anybody right?");
	enemies[1].message("Wow. More minions? It steals your pants and puts it on itself. Time to get them back.");
	enemies[2].message("How many more are there? Maybe this one will tell you where you are. Or maybe it hits you.... Yeaaaaaaa. Well... Maybe dead Minions are better.");
	enemies[3].message("Why are these Minions after you? Find out next time on Dragonb...Stupid Minion just hit you. It's time to dudududu duel!");
	enemies[4].message("A thought crosses your mind. Whoever put you here probably put the Minions here as well. Minions, of all things, minions.");
	enemies[5].message("ACHIEVEMENT UNLOCKED: Slayed some minions in life. Boredom is obviously settling in quick");
	enemies[6].message("A giant minion hobbles around in front of you. An obvious key dangles by it's side.");
	enemies[7].message("You stop to take a break after that fight. Just when you thought you could catch a breath out comes another.");
	enemies[8].message("This is becoming second nature. You'd think I would've been rewarded or something by now.");
	enemies[9].message("I'd love to say I'm enjoying this. I really do. I was made for this. Born to end the pitiful lives of minions. I'm a professional, an expert. What a sad life.");
	//Game

	while (!jarjarbinks.isDead()){
	    String choice;
	    if (!player.isDead()){
		if (player.room == -3) 
		    {
			System.out.println("Hey look!. A door that leads forward. Type forward to move forward.\n This probably applies to doors in the future.");

			choice=scan.next();
			while  (!choice.equals("forward")) {
				System.out.println("I'm sorry. That doesn't seem like you typed forward. Do you mind typing it again? Beware of capital letters!");
				choice = scan.next();
			    }
		    }
		player.room = -2;
		System.out.println("You enter. What is that? Is that Jar Jar Binks? \n \n Oh thank yousa. Mesa got lost here. Yousa is? \n \n As he rambles on, you realize how annoying he is. It's probably better to knock him unconcious. \n \n Why yousa hit me? \n \n You hit him again. \n \n This is war!");
	
		System.out.println("After training years in the mountain, it appears you have learned the sophisticated technique of only using 'attack', 'special attack', and 'block'. When your SP is 3, you may use your sattack(special attack). You gain sp by attacking. So.... What do you do?");
		while (!player.isDead()&&!jarjar.isDead()){
		    choice = scan.next();
		    if (choice.equals("attack")){
			player.attack(jarjar);
			jarjar.attack(player);
		    }
		    else if (choice.equals("sattack")){
			player.sattack(jarjar);
			jarjar.attack(player);
		    }
		    else if (choice.equals("block")){
			player.block();
		    }
		    else {
			System.out.println("There's only attack, sattack, and block");
		    }
		    System.out.println(player.toString());
		    System.out.println(jarjar.toString());
		    System.out.println("Your turn.");
		}


 		if (jarjar.isDead()) {
		    player.boost();
		    player.heal();
		    System.out.println("Finally! That pesky alien thing is dead. Well, looks like there's a door that leads forward. Which direction do you go?");
		    choice = scan.next();
		    while (!choice.equals("forward")) {
			System.out.println("Please try again. You may go forward, forward, or forward.");
			choice = scan.next();
		    }
		    player.room = 0;
		}
		int i = player.room;
		while (!player.isDead() && !(player.room==10)){
		    if (enemies[i].isDead()){
			System.out.println("The Minion in this room is dead. You may go " + enemies[i].path + " Which way do you go?");
		    }
		    
		    else {
			System.out.println(enemies[i].msg);
			while (!player.isDead()&&!enemies[i].isDead()){
			    choice = scan.next();
			    if (choice.equals("attack")){
				player.attack(enemies[i]);
				enemies[i].attack(player);
			    }
			    else if (choice.contains("sattack")){
				player.sattack(enemies[i]);
				enemies[i].attack(player);
			    }
			    else if (choice.equals("block")){
				player.block();
			    }
			    else {
				System.out.println("There's only attack, sattack, and block");
			    }
			    System.out.println(player.toString());
			    System.out.println(enemies[i].toString());
			    System.out.println("Your turn.");
			}
	    
			if (enemies[i].isDead() &&!(i==6)) {
			    player.boost();
			    player.heal();
			    System.out.println("Congrats! You killed a minion. You see doors that go " + enemies[i].path+ " Which way do you go?");
			}
			else if (enemies[i].isDead() && i ==6) {
			    player.boost();
			    player.heal();
			    System.out.println("Hey look! This Minion dropped a key. You pick it up and suddenly it disappears. You hear a unlocking noise in the distance. Where could that be?");
			    enemies[9].forward = 10;
			    enemies[9].path = "forward and to the right.";
			    
			}
		    }
		
		    choice = scan.next();
		    if (!player.isDead()){
			while (!((enemies[i].path).contains(choice))) {
			    System.out.println("Please try again. You may go " + enemies[i].path);
			    choice = scan.next();
			}
			if (choice.equals("left")&&((enemies[i].left)!=-1)){
			    player.room = enemies[i].left;
			    i = player.room;
			}
			else if (choice.equals("right")&&((enemies[i].right)!=-1)){
			    player.room = enemies[i].right;
			    i = player.room;
			}
			else if (choice.equals("forward")&&((enemies[i].forward)!=-1)){
			    player.room = enemies[i].forward;
			    i = player.room;
			}
			else if (choice.equals("backwards")&&((enemies[i].back)!=-1)){
			    player.room = enemies[i].back;
			    i = player.room;
			}
		    }
		}
	    
		if (player.room == 10) {
		    System.out.println("You enter the room. Wait... Could that be??? It's Jar Jar Binks! But how is he alive? It appears that he has been reborn. \n \n Yousa tried killing mesa. Now mesa angry. \n \n Oh my god! The Scanner says his power level is over 9000! Be careful. 3..2..1.. FIGHT. \n What do you do?");
			while (!player.isDead()&&!jarjarbinks.isDead()){
			    choice = scan.next();
			    if (choice.equals("attack")){
				player.attack(jarjarbinks);
				jarjarbinks.attack(player);
			    }
			    else if (choice.contains("sattack")){
				player.sattack(jarjarbinks);
				jarjarbinks.attack(player);
			    }
			    else if (choice.equals("block")){
				player.block();
			    }
			    else {
				System.out.println("There's only attack, sattack, and block");
			    }
			    System.out.println(player.toString());
			    System.out.println(jarjarbinks.toString());
			    System.out.println("Your turn.");
			}
		}
		if (jarjarbinks.isDead()) {
		    System.out.println("Jar Jar Binks falls to the floor. You have beaten him for the final time. Behind him stands the exit. You take it and exit out. Ahhhhh glorious victory! Suddenly, a mashy spike plate comes out of nowhere and kills you. THE END.");
		}
	    }
	
	    else {
		System.out.println("\n \n \n Game over! You will restart at the beginning.");
		if (dude.equals("A")) {
		    player = new Magikarp(player.name);
		    player.maxhp = player.hp;
		}
		else {
		    player = new Spongebob(player.name);
		    player.maxhp = player.hp;
		}
		player.room = -2;
		for (int i = 0; i < enemies.length; i++){
		    enemies[i] = new Minion("Minion");
		}
		enemies[7].hp += 60;
		enemies[7].atk += 20;

		enemies[0].makePath(1,-1,-1,-1,"to the left.");
		enemies[1].makePath(-1,0,2,-1,"forward and to the right.");
		enemies[2].makePath(-1,3,-1,1,"to the right and backward.");
		enemies[3].makePath(4,2,8,-1,"forward, to the left, and to the right.");
		enemies[4].makePath(3,5,6,-1,"forward,to the right, and to the left.");
		enemies[5].makePath(4,-1,-1,-1,"to the left.");
		enemies[6].makePath(-1,7,6,-1,"forward.");
		enemies[7].makePath(6,-1,-1,-1,"to the left.");
		enemies[8].makePath(9,-1,-1,3,"to the left and backward.");
		enemies[9].makePath(-1,8,-1,-1,"forward and to right.However, it appears that there is the door going forward is locked. Perhaps there is a key elsewhere?");

	//Creates messages when entering the room
		enemies[0].message("You enter the room. Wait... What's that yellow thing over there? Is that a Minion? It hits you and you shout. What was that for? Oh well, no one likes Minions anyways. 1 more dead won't hurt anybody right?");
		enemies[1].message("Wow. More minions? It steals your pants and puts it on itself. Time to get them back.");
		enemies[2].message("How many more are there? Maybe this one will tell you where you are. Or maybe it hits you.... Yeaaaaaaa. Well... Maybe dead Minions are better.");
		enemies[3].message("Why are these Minions after you? Find out next time on Dragonb...Stupid Minion just hit you. It's time to dudududu duel!");
		enemies[4].message("A thought crosses your mind. Whoever put you here probably put the Minions here as well. Minions, of all things, minions.");
		enemies[5].message("ACHIEVEMENT UNLOCKED: Slayed some minions in life. Boredom is obviously settling in quick");
		enemies[6].message("A giant minion hobbles around in front of you. An obvious key dangles by it's side.");
		enemies[7].message("You stop to take a break after that fight. Just when you thought you could catch a breath out comes another.");
		enemies[8].message("This is becoming second nature. You'd think I would've been rewarded or something by now.");
		enemies[9].message("I'd love to say I'm enjoying this. I really do. I was made for this. Born to end the pitiful lives of minions. I'm a professional, an expert. What a sad life.");
	    
		jarjar = new Boss();
		jarjarbinks = new Boss();
		jarjarbinks.hard = true;
		jarjarbinks.hp += 80;
		jarjarbinks.atk += 50;
		jarjarbinks.def += 40;
	    }
	}
    }
}
		
