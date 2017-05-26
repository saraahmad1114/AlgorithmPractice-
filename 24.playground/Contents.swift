//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Question: Write code to remove the duplicates from an unsorted linked list 

//The idea is to have a set dataset in order to prevent any duplicates from being added 

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

func removeDuplicates (head: Node?) -> Node? {

    var current = head
    
    var stableNode = head
    
    var uniqueList : Set<Int> = []
    
    while current != nil {
    
        if uniqueList.insert(current!.value).inserted{
            
            stableNode = current!
        }
        else{
            stableNode!.next = current!.next
        }
        
        current = current!.next
    }
    
    return head
}

let h = Node.init(value: 1)

var current = h

for i in 0..<30 {
    
    let randomValue = Int(arc4random_uniform(10))
    
    current.next = Node.init(value: randomValue)
    
    current = current.next!
}

removeDuplicates(head: h)

print(h)

print(removeDuplicates(head: h))



