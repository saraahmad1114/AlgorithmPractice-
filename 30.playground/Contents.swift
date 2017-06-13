//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Question: You have two number represented by a linked list, where each node contains a single digit. The digits are stored in reverse order, such that the 1's digit is at the head of the list. Write a function that adds the two numbers and returns the sum as a linked list. 

class Node {

    var value: Int
    var next: Node?
    
    init(value: Int, next: Node?) {
        self.value = value
        self.next = next
    }

}

let thirdNode = Node(value: 6, next: nil)

let secondNode = Node(value: 1, next: thirdNode)

let firstNode = Node(value: 7, next: secondNode)

func reverseLinkedList (head: Node?) -> Node? {
    
    var current = head
    var prev: Node?
    var next: Node?
    
    while current != nil {
        
        next = current?.next
        
        current?.next = prev
        
        prev = current
        
        current = next
    }
    
    return prev
}


reverseLinkedList(head: firstNode)

func printLinkedList (head: Node?) -> String{
    
    var current = head
    
    var listVal = ""
    
    while current != nil {
        
        listVal += "\(current?.value ?? -1)"
        
        current = current?.next
    }
    
    return listVal
}

printLinkedList(head: thirdNode)

//func provideSum (string: String) -> Int {
//
//
//
//
//}



