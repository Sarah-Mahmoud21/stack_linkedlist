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


void removeOccurence(int value) {

  Node? current = head;
  Node? prev = null;

  while (current != null) {
    if (current.data == value) {
      if (prev == null) {
        // If the value to remove is at the head
        head = current.next;
      } 
      else {
        prev.next = current.next;
      }
    } 
    else {
      prev = current;
    }
    current = current.next;
  }
}


  void display(){
    Node? current = head;
    print("\n");
    while (current != null) {
      print("${current.data} ");
      current = current.next;
  }
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
  print("pick the number you want  to remove");
  int number= int.parse(stdin.readLineSync()?? '');
  linkedList.removeOccurence(number);
  linkedList.display();
  
}
