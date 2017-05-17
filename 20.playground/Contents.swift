//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Question: There are three types of edits that can be performed on strings: insert a character remove a character, or replace a character. Given two strings, write a function to check if they are one edit or zero edits away. 

//insert a character - meaning an extra character exists so its length = length + 1

//remove a character - meaning one character in length is missing so its length = length - 1 

//replace a string - meaning one character that so the length = length 


func oneEditAway (str1: String, str2: String) -> Bool{

    //inserted a character
    if str1.characters.count == str2.characters.count + 1 || str2.characters.count == str1.characters.count + 1 {
        return insertedACharacter(str1: str1, str2: str2)
    }
    //removed a character
    else if str1.characters.count == str2.characters.count - 1 || str2.characters.count == str1.characters.count - 1{
        return removedACharacter(str1: str1, str2: str2)
    }
    //replaced a character
    else if str1.characters.count == str2.characters.count {
        return replacedACharacter(str1: str1, str2: str2)
    }
    //else just return false
    else{
        return false
    }
}

func insertedACharacter(str1: String, str2: String) -> Bool{
    
    var differenceCounter = 0
    
    var str1Array: [String] = [String(str1.characters)]
    var str2Array: [String] = [String(str2.characters)]

    for i in 0...str1Array.count-1{
        if str1Array[i] != str2Array[i]{
            differenceCounter += 1
        }
    }
    if differenceCounter >= 1 {
        return true
    }
    else {
        return false
    }
}

func removedACharacter(str1: String, str2: String) -> Bool{

    

}


func replacedACharacter(str1: String, str2: String) -> Bool{


}





