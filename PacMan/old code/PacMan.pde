class PacMan{

int tileX, tileY; //tile its on
int xCor; int yCor; //upper left corner of the 26x26 pacman
int centerX; int centerY;
int pellet;
int direction;
String[] directions = {"up_","right_","down_","left_"};
PImage[] frames = new PImage[3];

PacMan(int a, int b){

 xCor = a;
 yCor = b;
 centerX = xCor+12;
 centerY = yCor+12;

 tileX = centerX/16;
 tileY = centerY/16;
 direction = 4;

 
 frames[0] = loadImage("frame1.png"); //frame1 is same for each dir
 frames[1] = loadImage(directions[direction-1]+"frame2.png");
 frames[2] = loadImage(directions[direction-1]+"frame3.png");

}

void refresh(){
  //UPDATES THE FRAMES ACCORDING TO DIRECTION AND CENTERX/Y COORS
 frames[1] = loadImage(directions[direction-1]+"frame2.png");
 frames[2] = loadImage(directions[direction-1]+"frame3.png");
 
 centerX = xCor + 12;
 centerY = yCor + 12;

}
//get x,y of PacMan
//find tile in 2d array
//give to eat function
void eat(Tile t){
  if (t.hasPellet){
    pellet++;
    t.hasPellet = false;
  }
} 

void target(){
  color green = color(0,255,0);
  fill(green);
  rect(board[tileX][tileY].xCor,board[tileX][tileY].yCor,16,16);
}
//if tile at pmx and pmy is not a wall  
//check for walls pending

void display(int frame){
  refresh();
  image(frames[frame-1], xCor, yCor);
  //color red = color(0,255,0);
  //set(centerX,centerY,red);
}
}

