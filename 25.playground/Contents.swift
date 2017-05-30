//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Question: Implement an algorithm to find the kth to last element of a singly linked list. 


//1. list class - Define the linked list

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

//2. Create the list

func generateList() -> Node {
    
    let h = Node.init(value: 1)
    
    var current = h
    
    for _ in 0..<30 {
        
        let randomValue = Int(arc4random_uniform(10))
        
        current.next = Node.init(value: randomValue)
        
        current = current.next!
        
    }
    
    return h
}

//3. Create a counter to count the items in the linked list

func counter(h:Node?) -> Int{
    
    var current = h
    var counter = 0
    
    
    while current != nil{
    
        counter += 1
        current = current!.next
        
    }

    return counter
}


let firstList = generateList()

print(firstList)

let number = counter(h: firstList)


//4. Print the kth element in the linked list

func printKthtoLast (head: Node?, k: Int) -> Int{
    
    var current = head
    
    if current == nil {
        return 0
    }
    var index = printKthtoLast(head: current?.next, k: k) + 1
    
    if index == k {
    
        print("\(k)th to last node is \(current?.value)")
    
    }

    return index
}

printKthtoLast(head: firstList, k: number)




