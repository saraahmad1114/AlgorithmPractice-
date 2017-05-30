//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Question: Implement an algorithm to find the kth to last element of a singly linked list. 


//definition of the Linked List 
class Node: CustomStringConvertible{
    
    var value: Int
    var next: Node?
    
    var description: String{
        
        if next != nil {
            return "(\(value) \(next))"
        }
        else {
            return "(\(value) \(next))"
        }
        
    }
    init(value: Int) {
        self.value = value
    }
    
}