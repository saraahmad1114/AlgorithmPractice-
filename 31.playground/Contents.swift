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

func reverseLinkedList (h: Node?) -> Node? {

    var current = h
    
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

func getLinkedListVal (h: Node?) -> String {
    
    var current = h
    
    var val = ""
    
    while current != nil {
        
        val += "\(current?.value ?? -1)"
    
        current = current?.next
    
    }

    return val
    
}

func isPalindrome (h:Node?) -> Bool {
    
    var current = h
    
    var unreversedVal = getLinkedListVal(h: current)
    
    var reversedCurrent = reverseLinkedList(h: current)
    
    var reversedVal = getLinkedListVal(h: reversedCurrent)
    
    return unreversedVal == reversedVal
    
}

isPalindrome(h: firstNode)


