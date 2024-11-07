/* Question 17
If you need a variable that can hold any type of value and may change during
execution, which data type would you use? Write a code example to show this. */

void main() {
  dynamic tittel = "Hello"; 
  print(tittel); 
  
  tittel = 42; 
  print(tittel); 
  
  tittel = 3.14; 
  print(tittel); 
  
  tittel = true; 
  print(tittel); 
}
