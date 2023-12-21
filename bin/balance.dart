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

bool checkBalance(String input) {
  Stack<String> stack = Stack();

  for (int i = 0; i < input.length; i++) {
    String char = input[i];
    if (char == '(') {
      stack.push(char);
    } else if (char == ')') {
      if (stack.isEmpty) {
        return false; // it's unblanced if there is no ( in the stack
      }
      stack.pop(); //if there is ) and the stack isn't empty pop one of the ( 
    }
  }

  return stack.isEmpty; // every ) pops ( so if they're balanced it will be empty
}

void main() {
  while(true){
 print("Enter a string to check for balanced parentheses:");
  String inputString = stdin.readLineSync() ?? '';

  print("Entered String: $inputString");
  if(checkBalance(inputString)== true){
    print("$inputString :is Balanced");
  }
  else{
    print("$inputString :is not Balanced");
    
  }
  }
 
}