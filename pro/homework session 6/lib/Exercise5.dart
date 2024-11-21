/*  OOP, Mixins, Inheritance, and Abstraction
Create a small program that includes the following:
- An abstract class `Animal` with:
- A method `makeSound()` (abstract).
- A concrete method `describe()` that prints "I am an animal.".
- A class `Dog` that:
- Inherits from `Animal`.
- Implements the `makeSound()` method to print "Bark!".
- A mixin `RunFast` that:
Dart Programming Exercises
- Adds a method `run()` that prints "I run fast!".
- A class `Greyhound` that:
- Extends `Dog`.
- Mixes in `RunFast`.
In the `main()` function:
- Create an instance of `Greyhound`.
- Call `makeSound()`, `describe()`, and `run()` on the instance.
Goal: Combine OOP principles like inheritance, mixins, and abstraction. */


// الكلاس المجرد
// abstract class Animal {
//   // دالة مجردة
//   void makeSound();

//   // دالة عادية
//   void describe() {
//     print("I am an animal.");
//   }
// }

// // كلاس يرث من Animal
// class Dog extends Animal {
//   @override
//   void makeSound() {
//     print("Bark!");
//   }
// }

// // مزيج (Mixin)
// mixin RunFast {
//   void run() {
//     print("I run fast!");
//   }
// }

// // كلاس يرث من Dog ويخلط مع RunFast
// class Greyhound extends Dog with RunFast {}

// void main() {
//   // إنشاء كائن من Greyhound
//   Greyhound greyhound = Greyhound();

//   // استدعاء الدوال
//   greyhound.makeSound(); // "Bark!"
//   greyhound.describe();  // "I am an animal."
//   greyhound.run();       // "I run fast!"
// }

abstract class Animal {
  void makeSound();
  void describe(){
    print("I am an animal.");
  }

} 
class Dog extends Animal {
  @override
  void makeSound() {
    print("Bark!");
  }

}
mixin RunFast{
 void run (){
  print("I run fast!");
 }
 
}
class Greyhound extends Dog with RunFast {
  
}
void main() {
  Greyhound greyhound = Greyhound();
  greyhound.describe();
  greyhound.makeSound();
  greyhound.run();
}