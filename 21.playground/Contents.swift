//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Question: Implement a method to perform basic string compression using the counts of repeated characters. For example, the string aabcccccaaa would become a2b1c5a3. If the compressed string would not become smaller thatn the original string, your method should return the original string. You can assume the sring has only uppercase and lowercase letters. 

//aabcccccaaa = a2b1c5a3 

func whichStringIslonger(compressedString: String, originalString: String) -> String{
    
    if compressedString.characters.count < originalString.characters.count {
        return compressedString
    }
    else {
        return originalString
    }
}

func createCompressedString (input: String) -> String{
    
    var compressedString = ""
    
    var compressedDictionary: [String: Int] = [:]
    
    for char in input.characters{
        if 
    }
    
    return compressedString
}

