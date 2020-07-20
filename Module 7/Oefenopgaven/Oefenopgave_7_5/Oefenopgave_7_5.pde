//Oefenopgave_7_5 

float[] numbers = {3.3, 4.5, 7.2, 5.3, 9.0, 2.3};
float[] list1 = { -8.0, 4.5, 1.2, -5.6, -9.1, 4.0}; // min -9.1, max 4.5
float[] list2 = { -0.4, -0.7, -3.5, -1.9, -8.0}; // min -8.0, max -0.4

void setup(){
  float max = returnMaxArray(numbers);
  println("The highest number is: " + max);
  println("The highest number is: " + returnMaxArray(list1));
  println("The highest number is: " + returnMaxArray(list2));
  float min = returnMinArray(numbers);
  println("The lowest number is: " + min);
  println("The lowest number is: " + returnMinArray(list1));
  println("The lowest number is: " + returnMinArray(list2));
}
