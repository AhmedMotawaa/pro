/* Question 11
How do you concatenate strings in Dart? Write an example using two variables:
firstName and lastName. */
void main(){
  String firstName ='Ahmed';
  String lastName ='Mohamed';
  print('$firstName ,${lastName}');

  //After searching, I found this other result
  
  String fullname=firstName+ " " +lastName;
  print(fullname);
}