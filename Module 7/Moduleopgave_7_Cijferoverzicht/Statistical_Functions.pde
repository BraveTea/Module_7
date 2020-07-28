int numberOfTests(float[] array) {
  return array.length;
}

float maxArray(float[] array){
  float max = -Float.MAX_VALUE;
  for (int i = 0; i < array.length; i++){
    max = (array[i] > max) ? array[i] : max;
  }
  return max;
}

float minArray(float[] array){
  float min = Float.MAX_VALUE;
  for (int i = 0; i < array.length; i++){
    min = (array[i] < min) ? array[i] : min;
  }
  return min;
}

float averageMark(float[] array) {
  float total = 0;
  for (int i = 0; i < array.length; i++) {
    total += array[i];
  }
  return total/array.length;
}

int numberOfPasses(float[] array, float passingMark) {
  int numberOfPasses = 0;
  for (int i = 0; i < array.length; i++) {
    if (array[i] >= passingMark) {
      numberOfPasses += 1;
    } else {
      continue;
    }
  }
  return numberOfPasses;
}

int numberOfFails(float[] array, float passingMark){
  int numberOfFails = 0;
  for (int i = 0; i < array.length; i++){
    numberOfFails = (array[i] < passingMark) ? numberOfFails+=1 : numberOfFails;
  }
  return numberOfFails;
}
