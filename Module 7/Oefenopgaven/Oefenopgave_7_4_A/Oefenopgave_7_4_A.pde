//Oefenopgave_7_4_A

int[][] circles = { {10,15},{100,130},{77,43},{30, 145},{185,17},{99,76} };
final int DIAMETER = 20;
final int YELLOW = #FFFF00;
final int RED = #FF0000;

void setup(){
  size(200,200);
  ellipseMode(CENTER);
  println(circles[0].length);
  
}

void draw(){
  background(#000000);
  drawCircles(circles);
}

// DO NOT ALTER CODE ABOVE THIS COMMENT

void drawCircles(int[][] Arr){
  fill(YELLOW);
  for (int i = 0; i < Arr.length; i++){
    circle(Arr[i][0], Arr[i][1], DIAMETER);
  }
}



/* This might just be about nested for loops and 2d arrays
*/
