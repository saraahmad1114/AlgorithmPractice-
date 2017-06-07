//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Chapter 3 

//Question: Reverse a single linked linked list. 

class Node {

    var value: Int
    var next: Node?
    
    init(value: Int, next: Node?) {
        self.value = value
        self.next = next
    }
}

let thirdNode = Node(value: 3, next: nil)

let secondNode = Node(value: 2, next: thirdNode)

let firstNode = Node(value: 1, next: secondNode)


