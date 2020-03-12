//Oefenopgave_7_2

String[] groceries = {"test", "Test", "Blah", "lotsmore"};

void setup(){
  showOnScreen(groceries);
}

void showOnScreen(String[] showThis){
  for (int i = 0; i < showThis.length; i++){
    println(showThis[i]);
  }
}

/*
I believe the goal of this exercise was to have me combine functions, for loops,
and String Arrays.
I basically made a/the printArray function here.
*/
