class Solution {
  int calculate(String s) {
    int ans = 0;
    int num = 0;
    int sign = 1;
    List<int> stack = [];
    stack.add(sign);

    for (int i = 0; i < s.length; i++) {
      final char = s[i];

      if (RegExp(r'\d').hasMatch(char)) {
        num = num * 10 + int.parse(char);
      } else if (char == '(') {
        stack.add(sign);
      } else if (char == ')') {
        stack.removeLast();
      } else if (char == '+' || char == '-') {
        ans += sign * num;
        sign = (char == '+' ? 1 : -1) * stack.last;
        num = 0;
      }
    }

    return ans + sign * num;
  }
}

void main() {
  Solution sl = Solution();

  print(sl.calculate('(1+(4+5+2)-3)+(6+8)'));
}
