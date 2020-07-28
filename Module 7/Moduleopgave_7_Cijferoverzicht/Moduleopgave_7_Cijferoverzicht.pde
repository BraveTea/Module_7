//Moduleopgave_7_Cijferoverzicht


void setup() {
  size(600, 500);
  background(0);
  float[] marks = float(loadStrings("cijfers_groot.txt"));


  println(numberOfTests(marks));
  println(maxArray(marks));
  println(minArray(marks));
  println(averageMark(marks));
  println(numberOfPasses(marks, 6.0));
  println(numberOfFails(marks, 6.0));
  println(amountInRange(6.0, 10.0, marks));
  textBoxStatistics(marks);
  graphBarsBG();
  drawSingleGraphBar(0.0, 1.0, marks);
  
}

void draw() {
  
}

void drawSingleGraphBar(float min, float max, float[] array){
  fill(#00FF00);
  rect(35,350+115, 53, -amountInRange(min,max,array)*40);//the 40 is just to being able to see it at all, it has nothing to do with any calculations. //the 350 + 115 is magical now because of not knowing the coordinates of the grey rect. 
}

/* I need to give the measurements of the rect() below (35,115,530,350) non
magical numbers i.e. variables so I can reuse these later to calculate 
where the graphbars will go in drawSingleGraphbar or at the very least
create some global variables from which I can derive those.
WHAT ARE THE EXACT PIXELS START POINTS AND STUFF OF THE GREY RECTANGLE?
*/
void graphBarsBG(){
  smooth();
  textSize(10);
  fill(200);
  rect(35, 115, 530, 350); //600 - (35 + 530) = 35 == screenWidth - xRect + widthRec
  fill(255);
  smooth();
  textSize(10);
  for (int i = 0; i <= 10; i++){
    textAlign(CENTER);
    text(float(i), 35 + 53 * i, 480); //53 == width of rect/10
  }  
}

void textBoxStatistics(float[] array) {
  smooth();
  textSize(10);
  fill(255);
  String numberTestStr = "Number of Tests: " +  str(numberOfTests(array));
  text(numberTestStr, 10, 10);
  String highestMark = "Highest mark: " + str(maxArray(array));
  text(highestMark, 10, 25);
  String lowestMark = "Lowest mark: " + str(minArray(array));
  text(lowestMark, 10, 40);
  String averageMark = "Average mark: " + str(averageMark(array));
  text(averageMark, 10, 55);
  String numberOfPasses = "Amount of passes: " + str(numberOfPasses(array, 6.0));
  text(numberOfPasses, 10, 70);
  String numberOfFails = "Amount of fails: " + str(numberOfFails(array, 6.0));
  text(numberOfFails, 10, 85);
}
