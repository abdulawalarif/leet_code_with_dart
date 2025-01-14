class Solution {
  int strStr(String haystack, String needle) {
    int hLen = haystack.length;
    int nLen = needle.length;
    int index = 0;
    for (int i = 0; i < hLen; i++) {
      if (haystack[i] == needle[index]) {
        index++;
      } else {
        i = i - index;
        index = 0;
      }
      if (index == nLen) {
        return i - index + 1;
      }
    }
    return -1;
  }
}
//problme: https://leetcode.com/problems/find-the-index-of-the-first-occurrence-in-a-string/description/
