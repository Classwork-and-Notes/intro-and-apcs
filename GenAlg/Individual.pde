/*=====================================
  Each individual contains an array of genes that code for
  particular traits to be visually represented as a
  regular polygon.
  Instance variables:
      chromosome
        An array of genes, each entry corresponds to a
        specific trait in the following order:
          sides: number of sides
          rad: the distance from the center of the regulargon to any vertex
          red_color: red value
          green_color: green value
          blue_color: blue value
          x_factor: "wobble" factor for x values
          y_factos: "wobbly" factor for y values
      phenotype
        A regularGon object with traits the correspond to
        the values found in chromosome.
      fitness
        how "close" the Individual is to the desired state
====================================*/

class Individual {
  
  /*=====================================
  Number of genes in each chromosome and the
  unique indentifier for each gene type
  ====================================*/
  int CHROMOSOME_LENGTH = 7;
  int SIDES = 0;
  int RAD = 1;
  int RED_COLOR = 2;
  int GREEN_COLOR = 3;
  int BLUE_COLOR = 4;
  int X_FACTOR = 5;
  int Y_FACTOR = 6;

  /*=====================================
  Constants defining how long each gene will be.
  For initial developmen set these to lower
  values to make testing easier.
  ====================================*/
  int SIDE_GENE_SIZE = 6;
  int RADIUS_GENE_SIZE = 5;
  int COLOR_GENE_SIZE = 8;
  int FACTOR_GENE_SIZE = 4;
  
  //Instance variables
  Gene[] chromosome;
  Blob phenotype;
  int fitness;
  

  /*=====================================
  Create a New Individual by setting each entry in chromosome
  to a new randomly created gene of the appropriate length.
  
  After the array is populated, set phenotype to a new regulargon
  with center cx, cy and properties that align with gene values.
  (i.e. if the sides gene is 4, the regulargon should have 4
    sides...)
  ====================================*/
  Individual(int cx, int cy) { 
   chromosome = new Gene[CHROMOSOME_LENGTH];
   chromosome[SIDES] = new Gene(SIDE_GENE_SIZE);
   chromosome[RAD] = new Gene(RADIUS_GENE_SIZE);
   chromosome[RED_COLOR] = new Gene(COLOR_GENE_SIZE);
   chromosome[GREEN_COLOR] = new Gene(COLOR_GENE_SIZE);
   chromosome[BLUE_COLOR] = new Gene(COLOR_GENE_SIZE);
   chromosome[X_FACTOR] = new Gene(FACTOR_GENE_SIZE);
   chromosome[Y_FACTOR] = new Gene(FACTOR_GENE_SIZE);
   
   setPhenotype(cx,cy);
  }

  void txt(){  
    text(fitness, phenotype.x, phenotype.y);
  }

  /*=====================================
  Call the display method of the phenotype, make sure to set the fill
  color appropriately
  ====================================*/
  void display() {
     phenotype.display();
  }

  /*=====================================
  Set phenotype to a new regulargon with center cx, cy and 
    properties that align with gene values.
  ====================================*/
  void setPhenotype(int cx, int cy) { 
    phenotype = new Blob(cx, cy, chromosome[SIDES].value(), chromosome[RAD].value(), chromosome[X_FACTOR].value(), chromosome[Y_FACTOR].value(), chromosome[RED_COLOR].value(), chromosome[GREEN_COLOR].value(), chromosome[BLUE_COLOR].value());    
  }
  
  /*=====================================
  Print the value of each gene in chromosome, useful for
  debugging and development
  ====================================*/
 void printIndividual() {
     println( chromosome[0].value );
 }

  /*=====================================
    Return a new Individual based on the genes of the calling
    chromosome and the parameter, "other". A random number of
    genes should be taken from one of the 2 individuals and the
    rest from the other.
    The phenotype of the new Individual must be set, using cx and cy
    as the center
  ====================================*/
 Individual mate(Individual other, int cx, int cy) {
   Individual child = new Individual(cx, cy);
   int randNow;
   
   println("A");
   for (Gene g : child.chromosome)
     g.display();
   
   
   for (int i = 0; i < CHROMOSOME_LENGTH; i++) {
      randNow = int(random(2));
      if (randNow == 0)
        child.chromosome[i] = new Gene(this.chromosome[i]);
      else
        child.chromosome[i] = new Gene(other.chromosome[i]);
   }
   
   println("B");
   for (Gene g : child.chromosome)
     g.display();
   child.setPhenotype(cx, cy);
   return child;
 }

  /*=====================================
    Set the fitness value of the calling individual by
    comparing it to the parameter, "goal"
    The closer the two are, the higher the fitness value
    should be
  ====================================*/
 void setFitness( Individual goal ) {
   fitness =1000;
   int addNow;
   for (int i= 0; i < CHROMOSOME_LENGTH; i++) {
       addNow = (goal.chromosome[i].value() - this.chromosome[i].value());
       fitness -= abs(addNow);
   } 
 }

  /*=====================================
    Call the mutate method on a random number
    of genes.
  ====================================*/
 void mutate() {
   int thisMany = int(random(CHROMOSOME_LENGTH+1));
   for (int i = 0; i < thisMany; i++) {
     chromosome[int(random(CHROMOSOME_LENGTH))].mutate();
   }
 }

}
