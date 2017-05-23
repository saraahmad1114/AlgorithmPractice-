//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Question: Implement a method to perform basic string compression using the counts of repeated characters. For example, the string aabcccccaaa would become a2b1c5a3. If the compressed string would not become smaller thatn the original string, your method should return the original string. You can assume the sring has only uppercase and lowercase letters. 


func compressAString(given: String) -> String{
    
    var compress = ""
    var char = String(given[given.startIndex])
    var counter = 0
    
    for i in 0..<given.characters.count {
        
        let currentChar = String(given[given.index(given.startIndex, offsetBy: i)])
        
        if currentChar == char {
            counter += 1
        } else {
            compress += "\(char)\(counter)"
            char = currentChar
            counter = 1
        }
    }
    return compress

}

var given = "aabcccccaaa"

compressAString(given: given)












