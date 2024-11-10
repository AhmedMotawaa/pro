/* Create a to-do list program using a List where each item has a description, due date, and
completion status (as bool). Implement methods to add, remove, and update tasks, including the
use of for-each loops. */


import 'dart:core';

void main() {
  List<Task> toDoList = [];
  addTask(toDoList, "Buy groceries", "2024-03-27");
  addTask(toDoList, "Complete project", "2024-03-13");
  addTask(toDoList, "Exercise", "2024-03-18");

  print("\nCurrent To-Do List:");
  displayTasks(toDoList);

  updateTaskStatus(toDoList, "Buy groceries", true);

  removeTask(toDoList, "Exercise");

  print("\nUpdated To-Do List:");
  displayTasks(toDoList);
}

class Task {
  String description;
  String dueDate;
  bool isCompleted;

  Task(this.description, this.dueDate, {this.isCompleted = false});

  @override
  String toString() {
    return "$description (Due: $dueDate) - ${isCompleted ? "Completed" : "Pending"}";
  }
}

void addTask(List<Task> list, String description, String dueDate) {
  list.add(Task(description, dueDate));
  print("Task '$description' added.");
}

void removeTask(List<Task> list, String description) {
  list.removeWhere((task) => task.description == description);
  print("Task '$description' removed.");
}

void updateTaskStatus(List<Task> list, String description, bool status) {
  for (var task in list) {
    if (task.description == description) {
      task.isCompleted = status;
      print("Task '$description' updated to ${status ? "Completed" : "Pending"}.");
    }
  }
}

void displayTasks(List<Task> list) {
  if (list.isEmpty) {
    print("The to-do list is empty.");
  } else {
    list.forEach((task) => print(task));
  }
}
