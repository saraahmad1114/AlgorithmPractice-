//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Question: You have two number represented by a linked list, where each node contains a single digit. The digits are stored in reverse order, such that the 1's digit is at the head of the list. Write a function that adds the two numbers and returns the sum as a linked list. 

//original first linked list equals : 7 -> 1 -> 6 

//original second linked list equals : 5 -> 9 -> 2

class Node {

    var value: Int
    var next: Node?
    
    init(value: Int, next: Node?) {
        self.value = value
        self.next = next
    }

}

//first linked list

let thirdNode = Node(value: 6, next: nil)

let secondNode = Node(value: 1, next: thirdNode)

let firstNode = Node(value: 7, next: secondNode)

//second linked list

let sixthNode = Node(value: 2, next: nil)

let fifthNode = Node(value: 9, next: sixthNode)

let fourNode = Node(value: 5, next: fifthNode)


func reverseLinkedList (head: Node?) -> Node? {
    
    var current = head
    var prev: Node?
    var next: Node?
    
    while current != nil {
        
        next = current?.next
        
        current?.next = prev
        
        prev = current
        
        current = next
    }
    
    return prev
}


func getLinkedListVal (head: Node?) -> String{
    
    var current = head
    
    var listVal = ""
    
    while current != nil {
        
        listVal += "\(current?.value ?? -1)"
        
        current = current?.next
    }
    
    return listVal
}

func provideSum (firsth: Node?, secondh: Node?) -> Int {

    var sum = 0
    
    let newFirsth = reverseLinkedList(head: firsth)
    
    let newSecondh = reverseLinkedList(head: secondh)
    
    var firstVal = Int(getLinkedListVal(head: newFirsth))
    
    var secondVal = Int(getLinkedListVal(head: newSecondh))
    
    sum = firstVal! + secondVal!

    return sum
}

provideSum(firsth: firstNode, secondh: fourNode)



