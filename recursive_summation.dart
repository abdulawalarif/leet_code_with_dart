void main() {
 print('Result: ${recursiveSummation(10)}');

}


int recursiveSummation(int inputNumber){
  if(inputNumber <= 1) {
    return inputNumber;
  }
  return inputNumber + recursiveSummation(inputNumber - 1);
}


// This Dart program calculates the summation of all integers from a given number down to 1 using a recursive function. 
// The recursiveSummation function takes an integer as input and adds it to the summation of the next lower integer, 
// continuing this process until the input number is 1 or less, at which point the recursion stops. 
// The result is printed to the console. For example, recursiveSummation(10) 

//returns the sum 10 + 9 + 8 + … + 1 = 55 10+9+8+…+1=55.
