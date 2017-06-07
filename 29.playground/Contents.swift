//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Chapter 3 

//Question: Reverse a single linked linked list. 

//defining the linked list 

//A linked list has two things a value and then a pointer or address which points to the next node. 

//Linked list have an advantage over an array because they are faster to use to look up things as compared to an array.

class Node {

    var value: Int
    var next: Node?
    
    init(value: Int, next: Node?) {
        self.value = value
        self.next = next
    }
}

//creating all the links in the list

let thirdNode = Node(value: 3, next: nil)

let secondNode = Node(value: 2, next: thirdNode)

let firstNode = Node(value: 1, next: secondNode)

//printing all the contents of the linked list: the list goes from 1 -> 2 -> 3 -> nil

func printLinkedList (head: Node?){

    var current = head
    
    while current != nil {
        print(current?.value ?? -1)
        current = current?.next
    }
    
}

func reverseLinkedList (head: Node?) -> Node? {

    var current = head
    var prev: Node?
    var next: Node?
    
    while current != nil {
        
        current = current?.next
    }

    return prev
}




