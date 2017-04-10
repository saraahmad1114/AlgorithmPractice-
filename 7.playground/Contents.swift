//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Question: There are three types of edits that can be performed on strings; insert a character, remove a character, or replace a character. Given two strings, write a function to check if they are one edit (or zero edits) away. 

//insert a character

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

//remove a character

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

//replace a character

func hasCharacterBeenReplaced(firstString: String, secondString: String) -> Bool{

    var characterBeenReplaced = true
    
    var differenceCounter = 0
    
    var firstStringArray = [String(firstString.characters)]
    
    for i in 0..<firstStringArray.count{
        
        let currentChar = String(secondString[secondString.index(secondString.startIndex, offsetBy: i)])
        
        if firstStringArray[i] != currentChar {
            differenceCounter = differenceCounter + 1
        }
    }
    
    if differenceCounter == 1 && firstString.characters.count == secondString.characters.count{
        characterBeenReplaced = true
    }
    else{
        characterBeenReplaced = false
    }

    return characterBeenReplaced
}

hasCharacterBeenReplaced(firstString: "pale", secondString: "bale")

//All the sub functions of this algorithm exercise work! 

func areThereEditsOnTheStrings(firstString: String, secondString: String) -> (Bool, String){
    
    var answer = ( true, "some statement")

    if hasCharacterBeenInserted(firstString: firstString, secondString: secondString) == true {
       answer = (true, "Character Has Been Inserted")
    }
    else if hasCharacterBeenRemoved(firstString: firstString, secondString: secondString) == true{
       answer = (true, "Character has been removed")
    }
    else if hasCharacterBeenReplaced(firstString: firstString, secondString: secondString) == true {
        answer = (true, "Character has been replaced")
    }
    else {
        answer = (false, "No edits have been performed on the strings given")
    }
    return answer
}

areThereEditsOnTheStrings(firstString: "pale", secondString: "bake")



