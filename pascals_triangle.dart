void main() {
  for (int i = 0; i < 10; i++) {
    print('hello ${i + 1}');
  }
}

List<List<int>> generate(int numRows) {
  List<List<int>> triangle = [];

  if (numRows == 0) {
    return triangle;
  }

  List<int> first_row = [];

  first_row.add(1);
  
  triangle.add(first_row);
  
  for(int i =1; i<numRows; i++){
    List<int> previous_row = triangle[i-1];
    List<int> row = [];
    row.add(1);
    for(int j = 1; j<i; j++){
      row.add(pre)
    }
    
  }
  //return generate;
}


// This Dart program includes two parts:
// Main Function: A simple for loop prints "hello" followed by a number (from 1 to 10), iterating through the numbers and interpolating their value in the string using ${}.
// Generate Function: This function aims to generate Pascal's Triangle up to numRows. 
// The triangle is represented as a list of lists, where each inner list corresponds to a row of the triangle. 
// The logic starts with adding the first row [1]. For subsequent rows, the first and last elements are always 1, 
// and intermediate elements are the sum of two elements directly above them in the triangle. 
// However, the code is incomplete, as it does not finish populating rows correctly (row.add(pre) is incomplete).


