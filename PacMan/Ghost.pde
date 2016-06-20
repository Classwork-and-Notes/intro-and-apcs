import java.*;

class Ghost {

  int tileX, tileY; //tile its on
  int xCor; 
  int yCor; //upper left corner of the 26x26 pacman
  int centerX; 
  int centerY;
  int[] priority;
  int direction;
String[] directions = {"up_","right_","down_","left_"};
PImage frame;


  Ghost(int a, int b) {

    xCor = a;
    yCor = b;  
    //Right here you see
    centerX = xCor+14;
    centerY = yCor+14;

    tileX = centerX/16;
    tileY = centerY/16;
    direction = 4;
    
    priority = new int[4];
    frame = loadImage(directions[direction-1]+"blinky.png");
    
  }

void refresh(){
  //UPDATES THE FRAMES ACCORDING TO DIRECTION AND CENTERX/Y COORS
 frame = loadImage(directions[direction-1]+"blinky.png");
 centerX = xCor + 14;
 centerY = yCor + 14;
 tileX = centerX/16;
 tileY = centerY/16;

}


  void solve(int px, int py) {

    println("solved");

    float[] distances = new float[4];

     float up = sqrt(pow(px - tileX, 2) + pow(py - (tileY - 1), 2));
     float right = sqrt(pow(px - (tileX + 1), 2) + pow(py - tileY, 2));
     float down = sqrt(pow(px - tileX, 2) + pow(py - (tileY + 1), 2));
     float left = sqrt(pow(px - (tileX - 1), 2) + pow(py - tileY, 2));
     
    distances[0] = up;
    distances[1] = down;
    distances[2] = left;
    distances[3] = right;

    java.util.Arrays.sort(distances);

    for (int i = 0; i < 4; i++) {
      if (distances[i] == up)
        priority[i] = 1;
      if (distances[i] == right)
        priority[i] = 2;
      if (distances[i] == down)
        priority[i] = 3;
      if (distances[i] == left)
        priority[i] = 4;
    }
/*
    distances[1] = sqrt(pow(px - tileX, 2) + pow(py - (tileY - 1), 2));
    distances[2] = sqrt(pow(px - (tileX + 1), 2) + pow(py - tileY, 2));
    distances[3] = sqrt(pow(px - tileX, 2) + pow(py - (tileY + 1), 2));
    distances[4] = sqrt(pow(px - (tileX - 1), 2) + pow(py - tileY, 2));
    */
     
    /*
    println("distances");
     println(up);
     println(down);
     println(left);
     println(right);
     */
  }

  void display() {
println(priority[0]);
    refresh();
  image(frame, xCor, yCor);
    
  }
}

