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
}

//creating a linkedList
let dogBreeds = linkedList()


//adding to the linkedList
dogBreeds.add(value: "Labrador")
dogBreeds.add(value: "Bulldog")
dogBreeds.add(value: "Beagle")
dogBreeds.add(value: "Husky")
dogBreeds.add(value: "Husky")

let setDogBreeds: Set<String> = []



