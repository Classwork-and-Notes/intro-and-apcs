//Boying Tang, Amanda Chiu
//Period 9

//"Constants"
int POPULATION_SIZE = 25;

//Global Variables
int selectedX; //grid x (as in row)
int selectedY; //grid y (as in column)
int bestX;
int bestY;
boolean continuous = false;
boolean showFitness = false;
float totalFitness;
int speed;
int generation;
float mutationRate = 0.05;

//The actual individuals
Individual[] population;
Individual selected;


/*=====================================
 Create an initial population of randomly
 generated individuals.
 Setup the basic window properties
 ====================================*/
void setup() {
  size(650, 650);
  populate();
  selected = population[0];
}

/*=====================================
 Redraw every Individual in the population
 each frame. Make sure they are drawn in a grid without
 overlaping each other.
 If an individual has been slected (by the mouse), draw a box
 around it and draw a box around the individual with the
 highest fitness value.
 If mating mode is set to continuous, call mating season
 ====================================*/
void draw() {
  
  background (255, 255, 255);
  for (Individual i : population){
    i.display();
    if (showFitness)
      i.txt();
  }
    
  mouseClicked();
  noFill();
  

  stroke(100);
  rect(120*selectedX, 120*selectedY, 120, 120, 10);
  findBest();
  stroke(200);
  rect(120*bestX, 120*bestY, 120, 120, 10);
  
  if (continuous == true) {
    matingSeason();

  }
}

/*=====================================
 When the mouse is clicked, set selected to
 the individual clicked on, and set 
 selectedX and selectedY so that a box can be
 drawn around it.
 ====================================*/
void mouseClicked() {

  if (mousePressed) {

    selectedX = (int)mouseX/120;
    selectedY = (int)mouseY/120;

    for (int i =0; i < POPULATION_SIZE; i++) {
      Individual now = population[i];
      if ((now.phenotype.x == 60+(110*selectedX)) && (now.phenotype.y == 60+(110*selectedY))) {
        selected = now;

        population[i] = population[0];
        population[0] = selected;

        return;
      }
    }
  }
}

/*====================================
 The following keys are mapped to actions:
 
 Right Arrow: move forard one generation
 Up Arrow: speed up when in continuous mode
 Down Arrow: slow down when in continuous mode
 Shift: toggle continuous mode
 Space: reset the population
 f: toggle fitness value display
 s: toggle smiley display
 m: increase mutation rate
 n: decrease mutation rate
 ==================================*/
void keyPressed() {
  if (key == BACKSPACE)
    populate();
  else if (keyCode == SHIFT) 
    continuous = !continuous;  
  else if (keyCode == RIGHT)
    matingSeason();
  else if (key == 'm' || key == 'M')
    mutationRate += 0.5;
  else if (key == 'n' || key == 'N')
    mutationRate -= 0.5;
  else if (key == ' ') 
    populate();
  else if (key == 'f' || key == 'F')
    showFitness = !showFitness;
  

  // println(keyCode); //wil display the integer value for whatever key has been pressed
}


/*====================================
 select will return a pseudo-random chromosome from the population
 Uses roulette wheel selection:
 A random number is generated between 0 and the total fitness 
 Go through the population and add each member's fitness until you exceed the random 
 number that was generated.
 Return the individual that the algorithm stopped on
 Do not include the "selected" Blob as a possible return value
 ==================================*/
Individual select() {
  int i = 0;
  int rand = (int)random(totalFitness);
  int x = population[0].fitness;

  while (rand > x) {
    x += population[++i].fitness;
  }
  return population[i];
}

/*====================================
 
 Replaces the current population with a totally new one by
 selecting pairs of Individuals and "mating" them.
 Make sure that totalFitness is set before you use select().
 The goal shape (selected) should always be the frist Individual
 in the population, unmodified.
 ==================================*/
void matingSeason() {
  
  if (selected == null) {
    println("none selected");
    return;
  } 
  
  mutate();
  Individual[] newPop = new Individual[POPULATION_SIZE];
  setTotalFitness();
  newPop[0] = selected;
  for (int i = 1; i < POPULATION_SIZE; i++) {
    Individual m1 = select();
    Individual m2 = select();

    newPop[i] = m1.mate(m2, population[i].phenotype.x, population[i].phenotype.y);
    
  }

  population = newPop;
  generation++;
  println("Generation #"+generation);
  setTotalFitness();
  println("Total Fitness: " + totalFitness);

  int bestFitness = 0;
  for (Individual i : population) {
    if (i.fitness > bestFitness)
      bestFitness = i.fitness;
  }
println("Best Fitness: " + bestFitness);
  
}

/*====================================
 
 Randomly call the mutate method an Individual (or Individuals)
 in the population.
 ==================================*/
void mutate() {
  int randNum;
  for (int i = 1; i < POPULATION_SIZE; i++) {
    randNum = (int)random(101);
    if (randNum < (mutationRate*100))
      population[i].mutate();
  }
}

/*====================================
 
 Set the totalFitness to the sum of the fitness values
 of each individual.
 Make sure that each individual has an accurate fitness value
 ==================================*/
void setTotalFitness() {
  totalFitness = 0;
  if (selected == null) {
    println("none selected");
    return;
  }

  for (Individual i : population) {
    i.setFitness(selected);
  }

  selected.fitness = 0;

  for (int i = 0; i< POPULATION_SIZE; i++) {
    totalFitness += population[i].fitness;
  }
}

/*====================================
 Fill the population with randomly generated Individuals
 Make sure to set the location of each individual such that
 they display nicely in a grid.
 ==================================*/
void populate() {
  population = new Individual[POPULATION_SIZE];
  for (int i = 0; i < (int)sqrt(POPULATION_SIZE); i++)
    for (int k = 0; k < (int)sqrt(POPULATION_SIZE); k++) {
      population[i*(int)sqrt(POPULATION_SIZE)+k] = new Individual(60+(110*i), 60+(110*k));
    }
}

/*====================================
 Go through the population and find the Individual with the 
 highest fitness value.
 Set bestX and bestY so that the best Individual can have a 
 square border drawn around it.
 ==================================*/
void findBest() {
  int indexHigh = 0;
  int highFit = 0;
  for (int i = 1; i<POPULATION_SIZE; i++) {
    if (population[i].fitness > highFit) {
      indexHigh = i;
      highFit = (int)population[i].fitness;
    }
  }
  bestX = population[indexHigh].phenotype.x;
  bestY = population[indexHigh].phenotype.y;
  
}

