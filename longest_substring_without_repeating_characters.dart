import 'dart:math';

class Solution {
  int lengthOfLongestSubstring(String s) {
    List<bool> ss = List.filled(128, false);
    int ans = 0;
    int i = 0;

    for (int j = 0; j < s.length; ++j) {
      int c = s.codeUnitAt(j);
      while (ss[c]) {
        ss[s.codeUnitAt(i++)] = false;
      }
      ss[c] = true;
      ans = max(ans, j - i + 1);
    }
    return ans;
  }
}
//problme:  https://leetcode.com/problems/longest-substring-without-repeating-characters/description/
