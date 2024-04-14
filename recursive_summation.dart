void main() {
 print('Result: ${recursiveSummation(10)}');

}


int recursiveSummation(int inputNumber){
  if(inputNumber <= 1) {
    return inputNumber;
  }
  return inputNumber + recursiveSummation(inputNumber - 1);
}