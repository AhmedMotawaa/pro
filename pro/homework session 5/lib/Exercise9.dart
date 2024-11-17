/*  Polymorphism
Create a base class Shape with a method calculateArea(). Create two derived classes:
- Circle with a property radius.
- Rectangle with properties length and width.
Override the calculateArea() method in both classes. Write a program to calculate and print the area
of a circle and a rectangle.
Goal: Understand polymorphism and method overriding. */


import 'dart:math';

abstract class Shape {
  double calculateArea();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return pi * radius * radius; 
  }
}

class Rectangle extends Shape {
  double length;
  double width;

  Rectangle(this.length, this.width);

  @override
  double calculateArea() {
    return length * width; 
  }
}

void main() {
  Circle circle = Circle(5.0);

  Rectangle rectangle = Rectangle(4.0, 7.0);

  print("Area of the circle: ${circle.calculateArea()}");
  print("Area of the rectangle: ${rectangle.calculateArea()}");
}

