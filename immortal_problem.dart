int elderAge(int n, int m, int k, int newp) {
  // Step 1: Generate the initial grid based on XOR of row and column indices
   int sum = 0;
  
  // Compute the sum directly without creating the grid
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < m; j++) {
      int value = i ^ j;
      int adjustedValue = value - k;
      if (adjustedValue < 0) {
        adjustedValue = 0;
      }
      sum += adjustedValue;
    }
  }

  // Handle the time constraint
  return sum % newp;

}

void main() {
  // Example usage
  print(elderAge(5, 8, 1, 100)); // Output: 5
}
