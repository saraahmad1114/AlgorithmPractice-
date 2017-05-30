//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Question: Implement an algorithm to delete a node in the middle (any node but the first and last node, not necessarily the exact middle) of a singly linked list, given only access to that node. 


//1. Definition of a linked list

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
    
    init (value: Int) {
    
        self.value = value
    }

}

//2. Generation of a linked list

func generateList () -> Node {

    let h = Node.init(value: 1)
    
    var current = h
    
    for _ in 0..<30 {
    
    let randomNum = Int(arc4random_uniform(10))
        
    current.next = Node.init(value: randomNum)
        
    current = current.next!
    
    }
    
    return h

}





