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