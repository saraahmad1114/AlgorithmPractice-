//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Question: Write a method to replace all spaces in a string with "20%". You may assume that the string length of the string has sufficient space at the end to hold the additional characters, and the at you are given the "true" length of the string. 

//input: "Mr. John Smith "
//ouput: "Mr.%20John%20Smith"

func replaceSpacesWithString(string: String)-> String{

    var newString = string
    
    if newString.characters.last == " "{
        newString.characters.removeLast()
        newString = newString.replacingOccurrences(of: " ", with: "%20")
    }
    else{
        newString = newString.replacingOccurrences(of: " ", with: "%20")
    }
    print(newString)
    return newString
}
replaceSpacesWithString(string: "Mr. John Smith ")