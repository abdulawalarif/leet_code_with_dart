//45:54 / 1:51:35



void main(){
  print("Result: ${fib(9)}");
}

int fib(int n){
  if((n == 0) || (n==1)){
  
    return n;
  } else{

    return fib(n-1) +fib(n-2);
  }

}