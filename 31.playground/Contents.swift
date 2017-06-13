//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Question: Implement a function to check if a linked list is a palinderome 

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


