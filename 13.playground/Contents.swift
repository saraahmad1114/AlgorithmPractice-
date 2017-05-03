//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Question: Reverse the characters in a a string 

func reverseString(input: String) -> [Character]{

    var reversedString = [Character]()
    
    for char in input.characters{
        reversedString.insert(char, at: 0)
    }

    return reversedString
}

reverseString(input: "Sara")

//another easier way to reverse the contents of a string are: 

func reverseStringUsingBuiltInFunction(input: String) -> String{
    
    return String(input.characters.reversed())
}

//the above will utilize the built in reverse() function 