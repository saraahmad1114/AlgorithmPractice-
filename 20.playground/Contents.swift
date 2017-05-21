//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Question: There are three types of edits that can be performed on strings: insert a character remove a character, or replace a character. Given two strings, write a function to check if they are one edit or zero edits away. 

//insert a character - meaning an extra character exists so its length = length + 1

//pale -> pales

//remove a character - meaning one character in length is missing so its length = length - 1 

//pale -> ple

//replace a string - meaning one character that so the length = length 

//pale -> bale




func oneEditAway (str1: String, str2: String) -> Bool{

    //insertion of a character
    if str1.characters.count + 1 == str2.characters.count {
        print("character has been inserted")
        return differenceInCharacter(str1: str1, str2: str2)
        
    }
    //removal of a character
    else if str1.characters.count - 1  == str2.characters.count {
        print("character has been removed")
        return removalDifferenceInCharacter(str1: str1, str2: str2)
    }
    //replacement of a character
    else if str1.characters.count == str2.characters.count {
        print("character has been replaced")
        return removalDifferenceInCharacter(str1: str1, str2: str2)
        
    }
    else{
        return false
    }
}

func removalDifferenceInCharacter(str1: String, str2: String)-> Bool{
    
    var difference = true
    
    var str1Counter = 0
    var str2Counter = 0
    
    var str1Array: [String] = [String(str1.characters)]
    var str2Array: [String] = [String(str2.characters)]
    
    for i in 0...str1Array.count-1{
        if str1Array[i] == str2Array[i] {
            str1Counter += 1
            str2Counter += 1
        }
    }
    if str2Counter == str1Array.count-1 {
        difference = true
    }
        
    else if str2Counter < str1Array.count-1{
        difference = false
    }
    return difference
}


func differenceInCharacter(str1: String, str2: String) -> Bool{

    var differenceInChar = true
    var differenceCounter = 0
    
    var str1Array: [String] = [String(str1.characters)]
    var str2Array: [String] = [String(str2.characters)]
    
    for i in 0...str1Array.count-1{
        if str1Array[i] != str2Array[i]{
            differenceCounter += 1
        }
    }
    if differenceCounter == 1 {
        differenceInChar = true
    }
    
    else if differenceCounter >= 2 {
        differenceInChar = false
    }

    return differenceInChar
}


print(oneEditAway(str1: "pale", str2: "bake"))







