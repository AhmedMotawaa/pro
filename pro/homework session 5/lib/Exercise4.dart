/* Loops
Write a Dart program to print the first 10 numbers in the Fibonacci sequence.
Goal: Practice loops and basic algorithmic thinking. */

void main() {
  int n = 10;
  int a = 0;  
  int b = 1;  

  print("The first $n numbers in the Fibonacci sequence are:");

  for (int i = 0; i < n; i++) {
    print(a); 
    int temp = a + b; 
    a = b;           
    b = temp;      
  }
}

