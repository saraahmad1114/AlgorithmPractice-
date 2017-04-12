//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Question: Write code to remove the duplicates from an unsorted linked list: Follow up: How would you solve this problem if a temporary buffer is not allowed? 

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


//function to remove the nodes
func removeDuplicates(head: Node?) -> Node? {
    
    var current = head
    var stableNode = head
    var set: Set<Int> = []

    while current != nil {
        
        if set.insert(current!.value).inserted {
            stableNode = current!
        } else {
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

print(h)
print("****************************")
print(removeDuplicates(head: h))



