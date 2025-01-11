//https://www.hackerrank.com/challenges/matrix-script/problem
import 'dart:core';

void main() {
//   List<String> matrix = [
// //5 9
//     '#%\$r%r\$n ',
//     'O%Mi\$iTi\$',
//     'yiaxsprt ',
//     'est%ctiy#',
//     '  t c i %',
//   ];
  //Output: #Oye is Mattrix sccript Triinity  $ #%


 List<String> matrix = [
  //7 3
'Tsi',
'h%x',
'i #',
'sM ',
'\$a ',
'#t%',
'ir!',
 ];
//Output: This is Matrix#  %!

//   List<String> matrix = [
// //4,6
//     'T%Mic&',
//     'h%axr%',
//     'iit#p!',
//     'ssrst&'
//   ];

//output: This isMatrix scrpt&%!&

// List<String> matrix =[
//   ///4 6
// '#%\$r%r',
// 'I%Mi\$i',
// 'tiaxsp',
// '#st%ct',
// ];
//  //Output: #It is Matrix script

//Input
//4 8
//   List<String> matrix = [
//     '#%\$r%r\$n',
//     'I%Mi\$iTi',
//     'tiaxsprt',
//     '#st%ctiy',
//   ];
// //Output: #It is Matrix script Trinity

  int row = 7, column = 3;
  print(matrixScript(row, column, matrix));
}

String matrixScript(int rows, int column, List<String> matrix) {
  // Rotate the matrix
  List<List<String>> rotatedMatrix =
      List.generate(column, (i) => List.filled(rows, ''));
  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < column; j++) {
      rotatedMatrix[j][i] = matrix[i][j];
    }
  }


  // Flatten the rotated matrix into a single string
  StringBuffer sample = StringBuffer();

  for (List<String> subset in rotatedMatrix) {
    for (String letter in subset) {
      sample.write(letter);
    }
  }
     print(sample.toString());

  // Replace invalid characters with a space
  String result = sample
      .toString()
      .replaceAllMapped(RegExp(r'(?<=\w)([^\d\w]+)(?=\w)'), (match) => ' ');

  return result;
}
