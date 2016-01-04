Tile[][] board;
PImage img;
PacMan player;
int counter = 0;
Ghost ghost;

void setup() {
  
  frameRate(60);
  size(448, 576);
  img = loadImage("pacman_bg.png");
  image(img, 0, 0);
  populate();
  loadPellets();
  displayP();
  player = new PacMan(board[13][25].xCor+4, board[13][25].yCor+10);
  ghost = new Ghost(board[13][14].xCor, board[13][14].yCor);//You need to do the where to draw ghost thing. I tried copying Pacman's but it put me at [14][15].
  
  //Red tile is current tile ghost is on for debugging
  
  board[13][15].isWall = true;///I had to do this or it'd go into the prison as an option
  board[14][15].isWall = true;
  
}
void loadPellets() {
  String[] lines = loadStrings("pellet.txt");
  String[] line;
  for (int i = 0; i < lines.length; i++) {
    line = lines[i].split(",");
    for (int j = 1; j < line.length; j++) {
      board[int(line[j])][int(line[0])].hasPellet = true;
    }
  }
}

void draw() {
  image(img, 0, 0);
  displayP();
  if ( counter < 5 ) {
    player.display(1);
  } else if ( counter < 10 ) {
    player.display(2);
  } else if ( counter < 15 ) {
    player.display(3);
  } else if ( counter < 20 ) {
    player.display(2);
  } else {
    player.display(1);
    counter = 0;
  }
  counter++;
  player.eat(board[player.tileX][player.tileY]);
  move();
  ghost.solve(player.tileX, player.tileY);
  gmove();
  ghost.display();
}




void gmove() {
  Tile target;
  
   println("moved");
   board[ghost.tileX][ghost.tileY].target();
   
   println(ghost.tileX);
   println(ghost.tileY);
   println(board[ghost.tileX][ghost.tileY].isWall);
   
   
  boolean notValid = true;
  int place = 0;
   
  while (notValid && place < 4) {
    if (ghost.priority[place] == 1) {
      target = board[ghost.tileX][ghost.tileY - 1];
      if (target.isWall && ghost.centerY > board[ghost.tileX][ghost.tileY].centerY) {
        ghost.yCor--;
        ghost.centerY--;
        notValid = false;
      }
      if (!target.isWall) {
        ghost.yCor--;
        ghost.centerY--;
        ghost.tileY = ghost.centerY / 16;
        notValid = false;
        //ghost.move(target);
      }
    } else if (ghost.priority[place] == 2) {
      target = board[ghost.tileX + 1][ghost.tileY];
      if (target.isWall && ghost.centerX < board[ghost.tileX][ghost.tileY].centerX) {
        ghost.xCor++;
        ghost.centerX++;
        notValid = false;
      }
      if (!target.isWall) {
        ghost.xCor++;
        ghost.centerX++;
        ghost.tileX = ghost.centerX / 16;
        notValid = false;
        //ghost.move(target);
      }
    } else if (ghost.priority[place] == 3) {
      target = board[ghost.tileX][ghost.tileY + 1];
      if (target.isWall && ghost.centerY < board[ghost.tileX][ghost.tileY].centerY) {
        ghost.yCor++;
        ghost.centerY++;
        notValid = false;
      }
      if (!target.isWall) {
        ghost.yCor++;
        ghost.centerY++;
        ghost.tileY = ghost.centerY / 16;
        notValid = false;
        //ghost.move(target);
      }
    } else {
      target = board[ghost.tileX - 1][ghost.tileY];
      if (target.isWall && ghost.centerX > board[ghost.tileX][ghost.tileY].centerX) {
        ghost.xCor--;
        ghost.centerX--;
        notValid = false;
      }
      if (!target.isWall) {
        ghost.xCor--;
        ghost.centerX--;
        ghost.tileX = ghost.centerX/ 16;
        notValid = false;
      }
    }
    //target.target();
    place++;
  }
  /*
  println("x");
   println(ghost.centerX);
   println( board[ghost.tileX][ghost.tileY].centerX);
   println("y");
   println(ghost.centerY);
   println( board[ghost.tileX][ghost.tileY].centerY);
   */
}





void displayP() {
  for (int i =0; i< 28; i++ ) {
    for (int j = 0; j < 36; j++) {
      //board[i][j].display(); //FOR DEBUGGING
    }
  }
}

void populate() {
  board = new Tile[28][36];
  for (int i =0; i< 28; i++ ) {
    for (int j = 0; j < 36; j++) {
      Tile newT = new Tile(i*16, j*16);
      board[i][j] = newT;
    }
  }
}


void keyPressed() {
  int prevDirection;
  prevDirection = player.direction;
  player.refresh();
  board[player.tileX][player.tileY].refresh();
  if (key == 'w') {//(keyCode == UP)
    //player.direction = 1;
    if ( prevDirection == 2 ) { //IF TURNING UP FROM RIGHT
      if ( player.centerX <= board[player.tileX][player.tileY].centerX) {
        player.direction = 1;
        player.xCor = board[player.tileX][player.tileY].centerX-12; // ALIGNS PACMAN.CENTERX WITH TILE.CENTERX
      }
    } else if ( prevDirection == 4 ) { // IF TURNING UP FROM LEFT
      if ( player.centerX >= board[player.tileX][player.tileY].centerX ) {
        player.direction = 1;
        player.xCor = board[player.tileX][player.tileY].centerX-12; // ALIGNS PACMAN.CENTERX WITH TILE.CENTERX
      }
    } else if ( prevDirection == 3 ) {
      player.direction = 1;
    }
  } else if (key == 'd') {//(keyCode == RIGHT)
    if ( prevDirection == 1 ) { //IF TURNING RIGHT FROM UP
      if ( player.centerY >= board[player.tileX][player.tileY].centerY) {
        player.direction = 2;
        player.yCor = board[player.tileX][player.tileY].centerY-12; // ALIGNS PACMAN.CENTERY WITH TILE.CENTERY
      }
    } else if ( prevDirection == 3 ) { // IF TURNING RIGHT FROM DOWN
      if ( player.centerY <= board[player.tileX][player.tileY].centerY ) {
        player.direction = 2;
        player.yCor = board[player.tileX][player.tileY].centerY-12; // ALIGNS PACMAN.CENTERX WITH TILE.CENTERX
      }
    } else if ( prevDirection == 4 ) {
      player.direction = 2;
    }
  } else if (key == 's') {//(keyCode == DOWN)
    if ( prevDirection == 2 ) { //IF TURNING DOWN FROM RIGHT
      if ( player.centerX <= board[player.tileX][player.tileY].centerX ) {
        player.direction = 3;
        player.xCor = board[player.tileX][player.tileY].centerX-12; // ALIGNS PACMAN.CENTERX WITH TILE.CENTERX
      }
    } else if ( prevDirection == 4 ) { // IF TURNING UP FROM LEFT
      if ( player.centerX >= board[player.tileX][player.tileY].centerX ) {
        player.direction = 3;
        player.xCor = board[player.tileX][player.tileY].centerX-12; // ALIGNS PACMAN.CENTERX WITH TILE.CENTERX
      }
    } else if ( prevDirection == 1 ) {
      player.direction = 3;
    }
  } else if (key == 'a') {//(keyCode == LEFT)
    if ( prevDirection == 1 ) { //IF TURNING LEFT FROM UP
      if ( player.centerY >= board[player.tileX][player.tileY].centerY) {
        player.direction = 4;
        player.yCor = board[player.tileX][player.tileY].centerY-12; // ALIGNS PACMAN.CENTERY WITH TILE.CENTERY
      }
    } else if ( prevDirection == 3 ) { // IF TURNING RIGHT FROM DOWN
      if ( player.centerY <= board[player.tileX][player.tileY].centerY ) {
        player.direction = 4;
        player.yCor = board[player.tileX][player.tileY].centerY-12; // ALIGNS PACMAN.CENTERX WITH TILE.CENTERX
      }
    } else if ( prevDirection == 2 ) {
      player.direction = 4;
    }
  }
}  

void move() {

  player.refresh();
  board[player.tileX][player.tileY].refresh();
  Tile target;

  if (player.direction == 1) {
    target = board[player.tileX][player.tileY - 1];
    if (target.isWall && player.centerY > board[player.tileX][player.tileY].centerY) {
      player.yCor--;
    }
    if (!target.isWall) {
      player.yCor--;
      player.tileY = player.centerY / 16;
      //player.move(target);
    }
  } else if (player.direction == 2) {
    target = board[player.tileX + 1][player.tileY];
    if (target.isWall && player.centerX < board[player.tileX][player.tileY].centerX) {
      player.xCor++;
    }
    if (!target.isWall) {
      player.xCor++;
      player.tileX = player.centerX / 16;
      //player.move(target);
    }
  } else if (player.direction == 3) {
    target = board[player.tileX][player.tileY + 1];
    if (target.isWall && player.centerY < board[player.tileX][player.tileY].centerY) {
      player.yCor++;
    }
    if (!target.isWall) {
      player.yCor++;
      player.tileY = player.centerY / 16;
      //player.move(target);
    }
  } else {
    target = board[player.tileX - 1][player.tileY];
    if (target.isWall && player.centerX > board[player.tileX][player.tileY].centerX) {
      player.xCor--;
    }
    if (!target.isWall) {
      player.xCor--;
      player.tileX = player.centerX/ 16;
      //player.move(target);
    }
  }
  //target.target();
  //player.target();
  //target.display();
}

/* TABBING OUT  
 void move() {
 
 Tile target;
 
 if (player.direction == 1) {
 target = board[player.tileX][player.tileY - 1];  
 if (!target.isWall){
 player.yCor--;
 player.tileY = player.centerY / 16 + 1;
 //player.move(target);
 }
 } else if (player.direction == 2) {
 target = board[player.tileX + 1][player.tileY];
 if (!target.isWall){
 player.xCor++;
 player.tileX = player.centerX / 16;
 //player.move(target);
 }
 } else if (player.direction == 3) {
 target = board[player.tileX][player.tileY + 1];
 if (!target.isWall){
 player.yCor++;
 player.tileY = player.centerY / 16;
 //player.move(target);
 }
 } else{
 target = board[player.tileX - 1][player.tileY];
 if (!target.isWall){
 player.xCor--;
 player.tileX = player.centerX/ 16 + 1;
 //player.move(target);
 }
 }
 target.target();
 player.target();
 target.display();
/*
 println(player.x);
 println(player.xCor);
 println(player.y);
 println(player.yCor);
 
 board[player.tileX][player.tileY].display();
 
 }
 TABBING END */
