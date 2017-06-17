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

var rawBookStack = Stack()

rawBookStack.push(_element: "FirstBook")

rawBookStack.push(_element: "secondBook")

rawBookStack.push(_element: "ThirdBook")

rawBookStack.pop()
//removed the last element inserted in

rawBookStack.peek()
//allows you to see what is on the top 





