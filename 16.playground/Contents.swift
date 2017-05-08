//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Question: reversing a string without creating an additional array or other data structure 

func reverseString (inputString: String) -> String{

    var reversedString = ""
    
    if inputString.characters.count == 2 {
        reversedString = inputString
        return reversedString
    }

   
        var characterArray = Array(inputString.characters)
        var leftIndex = 0
        var rightIndex = inputString.characters.count - 1
        
        
        while leftIndex < rightIndex {
        
           var leftElement = characterArray[leftIndex]
           var rightElement = characterArray[rightIndex]
            
           characterArray.remove(at: leftIndex)
            
           characterArray.insert(rightElement, at: leftIndex)
            
           characterArray.remove(at: rightIndex)
            
           characterArray.insert(leftElement, at: rightIndex)
            
        leftIndex += 1
        rightIndex -= 1
            
        }

    
    return String(characterArray)
}

reverseString(inputString: "characters")