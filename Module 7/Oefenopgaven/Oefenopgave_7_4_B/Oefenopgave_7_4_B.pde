//Oefenopgave_7_4_B
// Same code as 7_4_A but now have yellow circle turn red if mouse is on it
int[][] circles = { {10, 15}, {100, 130}, {77, 43}, {30, 145}, {185, 17}, {99, 76} };
final int DIAMETER = 20;
final int YELLOW = #FFFF00;
final int RED = #FF0000;

void setup() {
  size(200, 200);
  ellipseMode(CENTER);
  println(circles[0].length);
}

void draw() {
  background(#000000);
  drawCircles(circles);
  //isMouseOnCircle();
}

// DO NOT ALTER CODE ABOVE THIS COMMENT

void drawCircles(int[][] Arr) {
  
  for (int i = 0; i < Arr.length; i++) {
    circle(Arr[i][0], Arr[i][1], DIAMETER);
  }
  for (int i = 0; i < 6; i++) {
    if (mouseX < circles[i][0]+DIAMETER/2 && mouseX > circles[i][0]-DIAMETER/2 && mouseY < circles[i][1]+DIAMETER/2 && mouseY > circles[i][1] - DIAMETER/2) {
      fill(RED);
      println("YES");
    }
    else {
      fill(YELLOW);
      println("NO");
    }
  }
}

//test function
void isMouseOnCircle() {
  for (int i = 0; i < 6; i++) {
    if (mouseX < circles[i][0]+DIAMETER/2 && mouseX > circles[i][0]-DIAMETER/2 && mouseY < circles[i][1]+DIAMETER/2 && mouseY > circles[i][1] - DIAMETER/2) {
      println("YES");
    }
    else {
      println("NO");
    }
  }
}
