class Solution {
  List<int> plusOne(List<int> list) {
  int len = list.length - 1;
  
  for(int i = len; i>=0; i--){
    if(list[i]<9){
      list[i]++;
      return list;
    }
    list[i] = 0;
  }
  list.insert(0,1);
  
  return list;
  }
}

//problme: https://leetcode.com/problems/plus-one/description/