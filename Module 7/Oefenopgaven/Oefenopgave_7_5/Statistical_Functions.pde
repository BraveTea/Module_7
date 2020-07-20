

float returnMaxWithMax(float[] array){
  float[] sortedArray = sort(array);
  return sortedArray[array.length-1];
}


float returnMaxArray(float[] array){
  float test = -2147483648.999999; //although not sure, I think this is the lowest possible value that can be stored in a float
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
  float test = 2147483648.999999; //although not sure, I think this is the highest possible value that can be stored in a float
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
