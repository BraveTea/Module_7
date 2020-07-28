

float returnMaxWithMax(float[] array){
  float[] sortedArray = sort(array);
  return sortedArray[array.length-1];
}


float returnMaxArray(float[] array){
  float test = -Float.MAX_VALUE; 
  for (int i = 0; i < array.length; i++){
    if (array[i] > test){
      test = array[i];
    }
    else {
      continue;
    }
  }
  return test;
}

float returnMinArray(float[] array){
  float test = Float.MAX_VALUE; 
  for (int i = 0; i < array.length; i++){
    if (array[i] < test){
      test = array[i];
    }
    else {
      continue;
    }
  }
  return test;
}
