# Singly Linked List Implementation in Ruby
This is my implementation of a singly linked list using Ruby with some basic functionality. It makes use of two classes to model the data. The `Node` class models a single node in the list, and the `LinkedList` class models the LinkedList itself containing many nodes.

## Node Class
The `Node` class models a single node in a linked list. The class makes of use two instance variables `value` and `next`. 

The `value` instance variable simply stores the value of the current node of the linked list. 

The `next` instance variable stores a reference to the next node in the linked list. This allows the object's instance methods to to traverse the list, moving from one node to the next.

The two attribute methods at the top of the class are Ruby shorthand methods for creating getter and setter methods for the instance variables. The `attr_reader` method creates a getter method for the value instace variable which allows the user to retrive the value of the node. The `attr_accessor` method creates both a getter and a setter method for the `next` instance variable which allows the user to both retrieve and set a new value for the `next` instance variable.

## LinkedList Class
The `LinkedList` class models the linked list by storing a reference to the head of the list , and providing instance methods to interact with the list.

The `@head` instance variable stores a reference to the head (first) node in the list. The instance methods use the `@head` instance variable to traverse the list by jumping from node to node using each node's `next` instance variable pointing to the next node in the list as described above.

Similarly to the `Node` class, the `LinkedList` class implements an `attr_reader` method to add a getter method to the class for the `@head` instance variable.

The instance methods provide functionality to interact with and manipulate the linked list. Instances of the `LinkedList` class are initialized as empty lists. The `print` method iterates over each node in the list and prints out its value.

<img src="https://i.imgur.com/C9zFQGI.png" alt="initialize">

The `append` method a new node to the end of the linked list. This makes use of the `tail` method which finds the tail of the list since the class only stores a reference to the head of the list. 

<img src="https://i.imgur.com/Lo4OyZu.png" alt="append">

The `append_after` method inserts a new node after a specified node. This method makes use of the `find` method which returns the specified node.

<img src="https://i.imgur.com/zfcxVra.png" alt="append_after">

The `delete` method removes the specified node from the linked list.

<img src="https://i.imgur.com/XLZfOYg.png" alt="delete">