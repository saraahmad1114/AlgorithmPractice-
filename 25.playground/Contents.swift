//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Another way to solve question number 24, using the Ray Wenderlich tutorial


//This clasw will define what makes a Node
public class Node{

    var value: String
    
    var next: Node?
    
    weak var previous: Node?
    
    init(value: String){
        self.value = value
    }
}


//This class will allow you to keep track of where the list begins and ends 
public class linkedList {

    fileprivate var head: Node?
    private var tail: Node?
    
    public var isEmpty: Bool{
        return head == nil
    }
    
    public var first: Node? {
        return head
    }
    
    public var last: Node? {
        return tail
    }
    
    //To handle appending a new node on your list 
    public func add (value: String){
    
        let newNode = Node(value: value)
        
        if let tailNode = tail {
            newNode.previous = tailNode
            tailNode.next = newNode
        }
        
        else {
            head = newNode
        }
        
        tail = newNode
    }
    
    //To remove all nodes in the linked list 
    public func removeAll() {
        head = nil
        tail = nil
    }
    
    //
    public func remove(node: Node) -> String {
        let prev = node.previous
        let next = node.next
        
        if let prev = prev {
            prev.next = next // 1
        } else {
            head = next // 2
        }
        next?.previous = prev // 3
        
        if next == nil {
            tail = prev // 4
        }
        
        // 5
        node.previous = nil 
        node.next = nil
        
        // 6
        return node.value
    }
}



//1. updated the next pointer if you are not removing first node in the list 
//2. Update the head pointer if you are removing the first node in the list 
//3. update the previous pointer to the previous pointer of the deleted node 
//4. update the tail if you are removing the last node in the list 
//5. Assign nil to the removed nodes previous and next pointers 
//6. return the value for the removed node. 

//creating a linkedList
let dogBreeds = linkedList()


//adding to the linkedList
dogBreeds.add(value: "Labrador")
dogBreeds.add(value: "Bulldog")
dogBreeds.add(value: "Beagle")
dogBreeds.add(value: "Husky")
dogBreeds.add(value: "Husky")

let setDogBreeds: Set<String> = []



