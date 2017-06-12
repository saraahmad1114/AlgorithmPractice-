//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Question: You have two number represented by a linked list, where each node contains a single digit. The digits are stored in reverse order, such that the 1's digit is at the head of the list. Write a function that adds the two numbers and returns the sum as a linked list. 

class Node {

    var value: Int
    var next: Node
    
    init(value: Int, next: Node) {
        self.value = value
        self.next = next
    }

}

