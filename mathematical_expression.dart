import 'dart:collection';

double evaluate(String expression) {
  // Helper function to evaluate simple expressions without parentheses
  double evalSimple(String exp) {
    // Use a queue to process operators with the correct precedence
    Queue<String> tokens = Queue.from(exp.split(RegExp(r'(\D)')).where((e) => e.isNotEmpty));
    Queue<String> operators = Queue.from(exp.split(RegExp(r'(\d+\.?\d*)')).where((e) => e.isNotEmpty));

    // Function to perform an operation
    double operate(double left, String operator, double right) {
      switch (operator) {
        case '+':
          return left + right;
        case '-':
          return left - right;
        case '*':
          return left * right;
        case '/':
          return left / right;
        default:
          throw ArgumentError('Unknown operator: $operator');
      }
    }

    // Stack to handle multiplication and division first
    Queue<double> values = Queue<double>();
    values.add(double.parse(tokens.removeFirst()));
    
    while (tokens.isNotEmpty) {
      String operator = operators.removeFirst();
      double value = double.parse(tokens.removeFirst());
      
      if (operator == '*' || operator == '/') {
        double prevValue = values.removeLast();
        values.add(operate(prevValue, operator, value));
      } else {
        values.add(value);
        operators.addFirst(operator);
      }
    }

    double result = values.removeFirst();
    
    while (operators.isNotEmpty) {
      String operator = operators.removeFirst();
      double value = values.removeFirst();
      result = operate(result, operator, value);
    }

    return result;
  }

  // Helper function to handle parentheses
  double evalParentheses(String exp) {
    while (exp.contains('(')) {
      exp = exp.replaceAllMapped(RegExp(r'\(([^()]+)\)'), (match) {
        return evalSimple(match.group(1)!).toString();
      });
    }
    return evalSimple(exp);
  }

  return evalParentheses(expression.replaceAll(' ', ''));
}

void main() {
  // Test cases
  print(evaluate("1-1")); // Output: 0
  print(evaluate("1 -1")); // Output: 0
  print(evaluate("1- -1")); // Output: 2
  print(evaluate("6 + -(4)")); // Output: 2
  print(evaluate("(2 / (2 + 3.33) * 4) - -6")); // Output: 7.2009...
}
