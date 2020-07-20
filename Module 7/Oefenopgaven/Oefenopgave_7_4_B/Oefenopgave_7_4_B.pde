//Oefenopgave_7_4_B
// Same code as 7_4_A but now have yellow circle turn red if mouse is on it
int[][] circles = { {10, 15}, {100, 130}, {77, 43}, {30, 145}, {185, 17}, {99, 76} };
final int DIAMETER = 20;
final int YELLOW = #FFFF00;
final int RED = #FF0000;

void setup() {
  size(200, 200);
  ellipseMode(CENTER);
  
}

void draw() {
  background(#000000);
  drawCircles(circles);
  drawCircleUnderMouse(circles);
}

// my test code


// My code

final int RADIUS = DIAMETER/2;

void drawCircles(int[][] array) {
  for (int i= 0; i < array.length; i++) {
    fill(YELLOW);
    circle(array[i][0], array[i][1], DIAMETER);
  }
}

void drawCircleUnderMouse(int [][] array) {
  for (int i = 0; i < array.length; i++) {
    if (isMouseOnCircle(array[i])) {
      fill(RED);
      circle(array[i][0], array[i][1], DIAMETER);
    }
  }
}

boolean isMouseOnCircle(int[] xy){
  int x = xy[0];
  int y = xy[1];
  int sensitivity = RADIUS;
  
  return (mouseWithinXBounds(x, sensitivity) && mouseWithinYBounds(y, sensitivity));
}


boolean mouseWithinXBounds(int x, int sensitivity){
  return (mouseX > x - sensitivity && mouseX < x + sensitivity);
}

boolean mouseWithinYBounds(int y, int sensitivity){
  return (mouseY > y - sensitivity && mouseY < y + sensitivity);
}
