//Oefenopgave_7_3

/* Goal here is to write a method/function that only picks the top 5/ or in 
 this case the first 5 of an array. 
 So I am going to create a function that will have a string array as its
 parameter 
 */

//Oefenopgave_7_2

String[] groceries = {"test", "Test", "Blah", "lotsmore", "five", "six"};

void setup() {
  showOnScreen(1, groceries);
}

void showOnScreen(int topZoveel, String[] showThis) {
  if (topZoveel > showThis.length || topZoveel < 0) {
    println("Error Out Of Bounds");
  } 
  else {
    for (int i = 0; i < topZoveel; i++) {
      println(showThis[i]);
    }
  }
}

/*
I believe the goal of this exercise was to have me combine functions, for loops,
 and String Arrays.
 I basically made a/the printArray function here.
 */
