//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Question: There are three types of edits that can be performed on strings; insert a character, remove a character, or replace a character. Given two strings, write a function to check if they are one edit (or zero edits) away. 

//another character has been inserted

func hasCharacterBeenInserted(firstString: String, secondString: String) -> Bool{

    var characterBeenInserted: Bool = true
    if secondString.contains(firstString) || firstString.contains(secondString){
        if firstString.characters.count+1 == secondString.characters.count || secondString.characters.count+1 == firstString.characters.count{
            characterBeenInserted = true
        }
    }
    else {
        characterBeenInserted = false
    }
    return characterBeenInserted
}

hasCharacterBeenInserted(firstString: "pale", secondString: "pales")

//character has been removed

func hasCharacterBeenRemoved(firstString: String, secondString: String) -> Bool{

    var characterBeenRemoved = true
    var counter = 0

    var firstStringArray = [String(firstString.characters)]

    for i in 0..<firstStringArray.count{
        
        let currentChar = String(secondString[secondString.index(secondString.startIndex, offsetBy: i)])
        
        if firstStringArray[i] == currentChar {
            counter = counter + 1
        }
    }
    
    if firstStringArray.count == counter + 1 || secondString.characters.count == counter + 1{
        characterBeenRemoved = true
    }
    else{
        characterBeenRemoved = false
    }
    return characterBeenRemoved
}

hasCharacterBeenRemoved(firstString: "back", secondString: "bck")

func hasCharacterBeenReplaced(firstString: String, secondString: String) -> Bool{

    var characterBeenReplaced = true
    
    
    
    return characterBeenReplaced
}




