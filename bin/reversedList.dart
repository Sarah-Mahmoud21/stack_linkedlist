import'dart:io';

class Stack<Test> {
final List<Test> _items = [];

  void push(Test item) {
    _items.add(item);
  }

  Test pop() {
    if (_items.isEmpty) {
      print('Stack is empty');
    }
    return _items.removeLast();
  }

  bool get isEmpty => _items.isEmpty;
}

void printReversed(List<int> inputList) {
  Stack<int> stack = Stack();

  for (int item in inputList) { //push the items in the list to a stack
    stack.push(item);
  }

  while (!stack.isEmpty) {
    print(stack.pop()); // print the output of the pop() since in pops the last input first
  }
}

List<int> fillMyList() {
  List<int> filledList = [];
  int count = 0;
  int value = 0;

  print("How many items do you want in the list?");
  count = int.parse(stdin.readLineSync() ?? '');

  print("Enter the values each one in a new line:");
  for (int i = 0; i < count; i++) {
    value = int.parse(stdin.readLineSync() ?? '');
    filledList.add(value);
  }
  return filledList;
}

void main() {
  print("Please fill the list");
  List<int> myList = fillMyList();

  if (myList.isNotEmpty) {
    print("this is the reversed list:\n");
    printReversed(myList);
  } else {
    print("List is empty");
  }
}
