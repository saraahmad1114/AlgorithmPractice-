//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Question: Implement an algorithm to find the kth to last element of singly linked list 


/// 1

class Node : CustomStringConvertible{
    
    var value: Int
    var next: Node?
    
    //Computed property to understand how the nodes are attaching
    var description: String{
        
        if next != nil {
            return("\(value) -> \(next!)")
        }
            
        else{
            return("\(value) -> \(next)")
        }
    }
    
    //initializer to set the value of the node
    init(value: Int){
        self.value = value
    }
}

///2

func generateLinkedList() -> Node {

let h = Node.init(value: 1)

var current = h

for i in 0..<30 {

    let randomValue = Int(arc4random_uniform(10))
    current.next = Node.init(value: randomValue)
    current = current.next!
}
   return h
}

//print(generateLinkedList())
//1 -> 0 -> 4 -> 8 -> 0 -> 3 -> 2 -> 0 -> 5 -> 7 -> 6 -> 1 -> 3 -> 2 -> 6 -> 6 -> 9 -> 6 -> 3 -> 2 -> 3 -> 8 -> 3 -> 6 -> 7 -> 5 -> 9 -> 0 -> 0 -> 2 -> 4 -> nil

///3


func nodeCounter(head: Node) -> Int{

    var current = head
    var counter = 0
    
    while current != nil{
    
        counter = counter + 1
        
        current = current.next!
    }

    return counter
}

///4

func node(atIndex: Int, forList: Node?) -> Node? {
    
    var current = forList
    
    if atIndex >= 0 {
        
        for _ in 0..<atIndex {
            if current == nil {
                return nil
            }
            current = current?.next
        }
    } else {
        return nil
    }
    
    return current
}

let h = generateLinkedList()



