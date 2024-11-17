/* Functions
Create a function called calculateArea that takes two parameters: length and width. The function
should return the area of a rectangle. Call the function and print the result.
Goal: Understand function creation, parameters, and return values. */


double calculateArea(double length, double width) {
  return length * width;
}

void main() {
  double length = 5.0;
  double width = 3.0;

  double area = calculateArea(length, width);

  print("The area of the rectangle is: $area");
}

