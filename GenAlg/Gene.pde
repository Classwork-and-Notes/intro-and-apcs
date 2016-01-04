/*=====================================
   Each gene contains the code for a specific trait
   Instance Variables:
      genotype: int array to store a binary number
      value: corresponding base 10 number of the genotype
      geneLenght: desired length of the gene
  ====================================*/


class Gene {

 int geneLength;
  int[] genotype;
  int value;
  
  /*===================================== 
  Takes the length of the gene as a parameter,
  randomly sets every bit in the genotype array to
  a 1 or a 0, then calcuate the value.
  ====================================*/
  Gene(int l) {
    genotype = new int[l];
    geneLength = l;
    for (int i = 0; i<l ; i++) { 
      genotype[i] = (int)(Math.random()*2);
    }
    for (int i=l-1; i >= 0; i--) {
      value+= (Math.pow(2, i) * genotype[i]);
    }
  }
  
  /*=====================================
    Create a new gene that is a copy
    of the parameter
  ====================================*/
  Gene(Gene g) {    
    geneLength = g.geneLength;
    genotype = g.genotype;
    value = g.value;
  }       
         
  /*=====================================
    Pick a random element from genotype
    and switch it from 1 to 0 or vice-versa
  ====================================*/ 
  void mutate() {
    int mut = (int)(Math.random())*geneLength;
    println(mut);
    genotype[mut] = Math.abs(genotype[mut] - 1);
  }
  
  /*=====================================
  Go through the genotype and set value to the
  correct base 10 equivalent of the binary number
  ====================================*/
  void setValue() {
    value = 0;
    for (int i=geneLength-1; i >= 0; i--) {
      value+= (Math.pow(2, i) * genotype[i]);
    }
  }
  
  int value() {
   return value; 
  }
  /*=====================================
    Print the genotype array and value.
    used for debugging and development only
  ====================================*/
  void display() {
    
    println( genotype );
    println( value );
  }
  
}
