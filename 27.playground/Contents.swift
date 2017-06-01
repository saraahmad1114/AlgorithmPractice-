//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Question:  Write code to partition a linked list around a value x, such that all nodes less than x come before all nodes greater than or equal to x. If x is contained with the list, the values of x only need to be after the elements less than x (see below). The partition element x can appear anywhere in the "right partition"; it does not need to appear between left and right partitions. 


//1. Defintion of a linked list

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

//2. Generate linked list 

func generateLinkedList () -> Node {

    let h = Node.init(value: 1)
    
    var current = h
    
    for _ in 0..<30 {
    
        let randomNum = Int(arc4random_uniform(10))
        
        current.next = Node.init(value: randomNum)
        
        current = current.next!
    
    }

    return h
}






