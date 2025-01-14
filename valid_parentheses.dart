class Solution {
  bool isValid(String s) {
    if(s.isEmpty || s == null){
      return true;
    }

    List<String> opennings = [];
    for(int i =0; i<s.length; i++){
      if(opennings.isEmpty){
        opennings.add(s[i]);
      } else if(s[i]==')' && opennings.last == '('){
        opennings.removeLast();
      }else if(s[i]=='}' && opennings.last == '{'){
        opennings.removeLast();
      }else if(s[i]==']' && opennings.last == '['){
        opennings.removeLast();
      }else{
        opennings.add(s[i]);
      }
    }

    return opennings.isEmpty;
  }
}



// problem: https://leetcode.com/problems/valid-parentheses/