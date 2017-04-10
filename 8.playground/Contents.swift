//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
//Question: Implement a method to perform basic string compression using the sounts of repeated characters. For example the string aabcccccaaa would become a2b1c5a3. If the compressed string would not become smaller than the orginal string, your method should return the original string. You can assume the string has only uppercase and lowercase letters. 

//Create a dictionary and concatenate the contents to a single string

func stringCompression(givenString: String) -> String {
    
    if givenString.characters.count < 2 {
        return givenString
    }
    else{
    
    var compressedString = ""
    var start = String(givenString[givenString.startIndex])
    var counter = 1
    
    for i in 0..<givenString.characters.count {
        
        let currentLetter = String(givenString[givenString.index(givenString.startIndex, offsetBy: i)])
        
        if currentLetter == start {
            counter = counter + 1
        } else {
            compressedString += "\(start)\(counter)"
            start = currentLetter
            counter = 1
        }
    }
    
    if compressedString.characters.count < givenString.characters.count {
        return compressedString
    }
    else{
        return givenString
    }
    }
}

stringCompression(givenString: "aabcccccaaa")