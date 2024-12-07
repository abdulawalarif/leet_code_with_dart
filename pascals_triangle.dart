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
}
