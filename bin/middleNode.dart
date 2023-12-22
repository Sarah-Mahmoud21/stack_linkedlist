import 'dart:io';

class Node {
  dynamic data;
  Node? next;
  Node(this.data, {this.next});
}

class LinkedList {
  Node? head;

 void insert(dynamic data) {
  Node newNode = Node(data);
  if (head == null) { // if there is no head the new node is the head
    head = newNode;
  } else {
    Node? temp = head;
    while (temp?.next != null) { 
      temp = temp!.next; // as long as there's a next item keep moving till you creach the last item
    }
    temp!.next = newNode; // then insert the node at the end
  }
}

  

void findMiddle() {
  Node? firstPointer = head; // both pinters at the head
  Node? secondPointer = head;

  while (secondPointer != null && secondPointer.next != null) { // when the second reaches the end the first is in the middle
    firstPointer = firstPointer!.next;
    secondPointer = secondPointer.next!.next; // one moves one step the other moves 2 at a time 
  }

  print("Middle item: ${firstPointer!.data}");
}

  }

List<int> fillList() {
  List<int> filledList = [];

  print("Enter the number of items you want in the linked list:");
  int count =int.parse(stdin.readLineSync() ?? '');
   print("Enter the items you want in the linked list:");
  for (int i = 0; i < count; i++) {
      int number = int.parse(stdin.readLineSync() ?? '');
      filledList.add(number);
    } 

  return filledList;

}

void main() {
  LinkedList linkedList = LinkedList();
  List<int> values = fillList();

  for (int value in values) {
    linkedList.insert(value);
  }
  linkedList.findMiddle();
   }
