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

//2. Generation of the linked list

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



//3. Rearrange the nodes 

func partitionFor(value: Int, forList: Node?) -> Node? {
    
    if forList == nil {
        return nil
    }
    
    var current = forList
    
    var lessHead = Node.init(value: -100)
    var lessCurrent = lessHead
    
    let moreHead = Node.init(value: 100)
    var moreCurrent = moreHead
    
    while current != nil {
        
        if current!.value < value {
            lessCurrent.next = Node.init(value: current!.value)
            lessCurrent = lessCurrent.next!
        } else {
            moreCurrent.next = Node.init(value: current!.value)
            moreCurrent = moreCurrent.next!
        }
        
        current = current!.next
    }
    
    if lessHead.next == nil {
        return moreHead.next
    }
    
    if moreHead.next == nil {
        return lessHead.next
    }
    
    // merger two sub-lists
    lessHead = lessHead.next!
    lessCurrent.next = moreHead.next!
    
    return lessHead
}

let h = generateLinkedList()

print(h)

partitionFor(value: 50, forList: h)

print(partitionFor(value: 50, forList: h))











