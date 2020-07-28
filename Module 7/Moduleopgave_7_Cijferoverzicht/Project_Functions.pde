int amountInRange(float min, float max, float[] array){
  
  int amountInRange = 0;
  
  for (int i = 0; i < array.length; i++){
    if (array[i] > min && array[i] <= max){
      amountInRange += 1;
    }
  }
  return amountInRange;
}
