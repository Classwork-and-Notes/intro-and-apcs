
class Tile {

color wallColor = color(33,33,255); // RGB value for blue walls
color pelletColor = color(255,184,174);
//Instance Variables
int xCor; //upper left x cor
int yCor; //upper left y cor
int centerX;
int centerY;

boolean hasPellet; //true = pellet on tile
boolean isSuper;
boolean isWall;

Tile(int newX, int newY) {
  
  xCor = newX;
  yCor = newY;
  centerX = xCor + 6;
  centerY = yCor + 6;
  
  hasPellet = false;
  color c;
  isWall = false;
  for (int i = xCor; i <= xCor+15; i++) {
   for (int j = yCor; j <= yCor+15; j++) {
     c = get(i,j);
     //verify colors
     if (c == wallColor) {
       isWall = true;
     }
   }
  }
}

void refresh(){
  centerX = xCor + 6;
  centerY = yCor + 6;
}

void target(){
  color redColor = color(255,0,0);
  fill(redColor);
  rect(xCor,yCor,16,16);
}

void display() {
  refresh();
  color redColor = color(255,0,0);
 /* 
  if ( isWall ){
    fill( wallColor );
    rect(xCor,yCor,16,16);
  } else{
    fill(redColor);
    rect(xCor,yCor,16,16);
  } DEBUGGING
   */ 
 //display pellet
  if (hasPellet) {
   fill(pelletColor);
   rect(centerX,centerY,4,4);
  }
  //set(centerX,centerY,redColor);
}

}

