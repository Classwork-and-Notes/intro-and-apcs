
Blob[] bobs;
int popSize = 16;
int sides = 3;
int rad = 10;
int wobble = 4;


/*=====================================
 The trikiest part of setup is to make 
 the screen an appropriate size for the
 grid of blobs. The grid should be just
 big enough to contain all of the blobs.
 ====================================*/
void setup() {
  size((int)sqrt(16)*2*rad,(int)sqrt(16)*2*rad);
}

/*=====================================
 The main purpose of draw is to go through 
 the array of blobs and display each.
 ====================================*/
void draw() {
  populate();
  for (Blob b: bobs)
    b.display();

}

/*=====================================
 Populate the array of blobs.
 You can use any values for radius, number of sides
 and wobble factor that you'd like, but you must
 use x and y coordinates that ensure the blobs
 are drawn in a grid without overlaping each other.
 
 Your code should work for any reasonable value
 of population (i.e. something that would fit on a
 normal monitor).
 ====================================*/
void populate() {
  bobs = new Blob[popSize];
  
  for (int i = 0; i < (int)sqrt(popSize); i++)
     for (int k = 0; k < (int)sqrt(popSize); k++){
       bobs[i*(int)sqrt(popSize)+k] = new Blob(k*2*rad, i*2*rad, sides, rad, wobble, wobble);
}
}

