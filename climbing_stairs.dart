class Solution {
  int climbStairs(int n) {
    int one = 1;
    int two = 1;

    for (int i = 0; i < n - 1; i++) {
      int temp = one;
      one = one + two;
      two = temp;
    }
    return one;
  }
}
//problme:   https://leetcode.com/problems/climbing-stairs/ 