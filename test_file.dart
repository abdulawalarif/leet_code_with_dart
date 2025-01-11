void main() {
List<String> matrix =[
  ///4 6
'#%\$r%r',
'I%Mi\$i',
'tiaxsp',
'#st%ct',
];
//  //Output: #It is Matrix script
 

  matrixScript(4, 6, matrix);
}

String matrixScript(int row, int column, List<String> matrix) {
   //rotate the matrix
List<List<String>> rotatedMatrix = List.generate(column, (i)=>List.filled(row, ''));

for(int i =0; i<row; i++){
  for(int j = 0; j<column; j++){
    rotatedMatrix[j][i] = matrix[i][j];
  }
}
   //list data

   StringBuffer dummy = StringBuffer();
   for(List<String> subset in rotatedMatrix){
    for(String char in subset){
      dummy.write(char);
    }
   }

   print(dummy.toString());
   //filter charactes and paces
   String result = dummy.toString().replaceAllMapped(RegExp(r'(?<=\w)([^\d\w]+)(?=\w)'), (replace)=>' ');
   print(result);
  return '';
}
