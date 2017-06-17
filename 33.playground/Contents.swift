//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Stacks - Understanding stacks and their implementation in Swift
//Replacement Algorithm is LIFO

struct Stack {
    
    fileprivate var array: [String] = []
    
    //You'll be interacting with the array to implement the push, pop, and peek methods

    
    mutating func push (_element: String){
        array.append(_element)
    }
    
    mutating func pop() -> String? {
        return array.popLast()
    }
    
    mutating func peek () -> String? {
        return array.last
    }

}

extension Stack: CustomStringConvertible {
    
    var description: String {
        
        let topDivider = "---Stack---\n"
        
        let bottomDivider = "\n------------\n"
        
        let stackElements = array.reversed().joined(separator: "\n")
        //in order to get everything at the end of the array to appear on the top
        
        return topDivider + stackElements + bottomDivider
    }

}

var rawBookStack = Stack()
//create the stack

rawBookStack.pop()
//removed the last element inserted in

rawBookStack.peek()
//allows you to see what is on the top

//print(rawBookStack)
//Where the secondBook now is on the top 

rawBookStack.push(_element: "3D Games by Tutorials")
rawBookStack.push(_element: "tvOS Apprentice")
rawBookStack.push(_element: "iOS Apprentice")
rawBookStack.push(_element: "Swift Apprentice")

print(rawBookStack)

//prints out like the following: 

//---Stack---
//Swift Apprentice
//iOS Apprentice
//tvOS Apprentice
//3D Games by Tutorials
//------------








