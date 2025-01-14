class Solution {
  String longestCommonPrefix(List<String> strs) {
    if (strs.isEmpty) {
      return '';
    }

    strs.sort();

    String firstString = strs.first;
    String lastString = strs.last;

    int shortStringLeng = firstString.length < lastString.length
        ? firstString.length
        : lastString.length;
    int indexToPrefix = 0;

    while (indexToPrefix < shortStringLeng &&
        firstString[indexToPrefix] == lastString[indexToPrefix]) {
      indexToPrefix++;
    }

    return firstString.substring(0, indexToPrefix);
  }
}




// problem: https://leetcode.com/problems/longest-common-prefix/