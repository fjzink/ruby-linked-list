=begin
The Node class models an individal node in the linked list.
The instance variables store the value of the node and the next node in the linked list.
The attr_reader method creates a getter method for the value instance variable.
The attr_accessor method creates both a getter and a setter method for the next instance variable.
=end
class Node
    attr_reader :value
    attr_accessor :next
    
    def initialize(value = nil)
        @value = value
        @next = nil
    end
end

=begin
The LinkedList class models the linked list and stores a reference to the head
of the list with the head instance variable. The attr_reader method creates a getter
method for the head of the list. The instance methods of the LinkedList class
provide functionality for interacting with the linked list. 
=end
class LinkedList
    attr_reader :head
    
    def initialize
        @head = nil
    end

    #Append a new node to the end of the list with the given value
    def append(value)
        if @head #if the list is not empty add the new node to the end of the linked list
            tail.next = Node.new(value)
        else #if the list is empty make the new node the head of the linked list
            @head = Node.new(value)
        end
    end

    #Get the tail (last node) of the list
    def tail
        node = @head

        return node if !node #return nil if list is empty

        while node.next #keep moving to the next node until there isn't another next node
            node = node.next
        end

        return node #return last node in the linked list
    end

    #Print the contents of the linked list to stdout
    def print
        node = @head
        if !node
            puts "The list is empty"
            return
        end
        puts node.value #print the head of the list

        while node && node.next #iterate through each node and print its value
            node = node.next
            puts node.value
        end
    end

    #Find the node with the given value in the list
    def find(value)
        node = @head
        return false if !node #return false if node does not exist

        while node #iterate over each node in linked list and return the node if it matches the specified value
            return node if node.value == value
            node = node.next
        end
    end

    #Insert a new node into the last after the target node with the given value
    def append_after(target, value)
        node = find(target)

        return if !node #do nothing if the target node does not exist

        old = node.next #store old next node 
        node.next = Node.new(value) #set next node of current node to the newly inserted node
        node.next.next = old #set next of newly inserted node to old next to "reconnect" list
    end

    def delete(value)
        return if !@head #do nothing if the list is empty
        if @head.value == value #if head is the target set the next node as the new head
            @head = @head.next
            return
        end
        
        node = @head
        while node #if the next node contains the target value, set current node's next to the node after next
            if node.next.value == value
                node.next = node.next.next
                return
            end
            node = node.next
        end
    end
end