void main(){
   print('result: ${binarySearch(a: [1,2,3,4,5,6,7,8,9,20], letf: 0, right: 9, x: 1)}');
}


int binarySearch({required List<int> a,required int letf,required int right, required int x}){

if(letf>right){
  return -1;
}

int mid = (letf+right)~/2;

if(x == a[mid]){
  return mid;
}

if(x<a[mid]){
  return binarySearch(a: a, letf: letf, right: mid-1, x: x);
}
return binarySearch(a: a, letf: mid+1, right: right, x: x);
}