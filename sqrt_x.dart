class Solution {
  int mySqrt(int x) {
    int ans = 0, s = 0, e = x;

    while (s <= e) {
      int m = s + (e - s) ~/ 2;

      if (m * m <= x) {
        ans = m;
        s = m + 1;
      } else {
        e = m - 1;
      }
    }
    return ans;
  }
}

//problme: https://leetcode.com/problems/sqrtx/
