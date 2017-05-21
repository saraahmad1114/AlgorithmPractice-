//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Question: Implement a method to perform basic string compression using the counts of repeated characters. For example, the string aabcccccaaa would become a2b1c5a3. If the compressed string would not become smaller thatn the original string, your method should return the original string. You can assume the sring has only uppercase and lowercase letters. 





func compressAString(input: String) -> String{

    var compressedString = ""
    
    var counter = 0
    
    for i in 0...input.characters.count-1 {
        
        counter += 1
        
        var firstChar = String(input[input.index(input.startIndex, offsetBy: i)])
        
        var secondChar = String(input[input.index(input.startIndex, offsetBy: i+1)])
        
        if firstChar != secondChar {
        
            counter += 1
            
            compressedString += "\(firstChar)\(counter)"
        }
        
    }
    
    //result.characters.count >= str.characters.count ? str : result

    return compressedString

}

compressAString(input: "aabcccccaaa")






