//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Question: You have two numbers represented by a linked list, where each node contains a single digit. The digits are stored in reverse order, such that the 1's digit is at the head of the list. Write a function that adds the two numbers and returns the sum as a linked list. 

class Node: CustomStringConvertible {

    var value: Int
    
    var next: Node?
    
    var description: String{
        if next == nil {
            return "\(value) \(next)"
        }
        else {
            return "\(value) \(next)"
        }
        
    }

    init(value: Int){
        self.value = value
    }

}

