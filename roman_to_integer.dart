class Solution {
  int romanToInt(String s) {
    List<int> numbers = List<int>.filled(s.length, 0);
    int sum = 0;

    String soo ='kjfkdjf';
   

    for (int i = 0; i < s.length; i++) {
      switch (s[i]) {
        case 'I':
          numbers[i] = 1;
          break;

        case 'V':
          numbers[i] = 5;
          break;

        case 'X':
          numbers[i] = 10;
          break;

        case 'L':
          numbers[i] = 50;
          break;

        case 'C':
          numbers[i] = 100;
          break;

        case 'D':
          numbers[i] = 500;
          break;

        case 'M':
          numbers[i] = 1000;
          break;
      }
    }
    for (int i = 0; i < numbers.length - 1; i++) {
      if (numbers[i] < numbers[i + 1]) {
        sum -= numbers[i];
      } else {
        sum += numbers[i];
      }
    }

    return sum + numbers[numbers.length - 1];
  }
}

//problme: https://leetcode.com/problems/roman-to-integer/
