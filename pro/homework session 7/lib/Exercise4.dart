/* OOP, Polymorphism, and Interfaces
Create a program with the following:
Programming Exercises: Comprehensive Challenges
- An interface `Shape` with:
- A method `double area()`.
- Two classes `Circle` and `Rectangle` that:
- Implement the `Shape` interface.
- Provide implementations for the `area()` method.
- Use appropriate constructors to initialize properties (radius for Circle, length and width for Rectangle).
- In `main()`, create instances of `Circle` and `Rectangle` and print their areas. */

void main() {
  Shape circle = Circle(5.0);
  print("Circle: ${circle.area()}");

  Shape rectangle = Rectangle(10.0, 4.0);
  print("Rectangle: ${rectangle.area()}");
}

abstract class Shape {
  double area();
}

class Circle implements Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return 3.14159 * radius * radius;
  }
}

class Rectangle implements Shape {
  double length;
  double width;

  Rectangle(this.length, this.width);

  @override
  double area() {
    return length * width;
  }
}


