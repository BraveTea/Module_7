//Oefenopgave_7_3

/*
 I have to print two lists of the top 5 of boys names and the top 5 of girls names.
 */

//Oefenopgave_7_3

//lists: 
String[] boys = {"Liam", "Sem", "Lucas", "Luuk", "Noah", "Peter", "Kim"};
String[] girls = {"Emma", "Julia", "Sophie", "Anna", "Mila", "Kim", "Sytzke"};

void setup() {
  listOnScreen("Jongens", boys, 5);
  listOnScreen("Girls", girls, -1);
}

void listOnScreen(String listHeader, String[] list, int listSize) {
  if (listSize > list.length || listSize < 0) {
    println("Error: Out Of Bounds");
  } else {
    println("Top 5", listHeader + ":");
    for (int i = 0; i < listSize; i++) {
      println(str(i+1) + ":", list[i]);
    }
  }
}
