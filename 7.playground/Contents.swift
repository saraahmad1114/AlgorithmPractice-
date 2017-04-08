//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Question: There are three types of edits that can be performed on strings; insert a character, remove a character, or replace a character. Given two strings, write a function to check if they are one edit (or zero edits) away. 

//another character has been inserted -- insert a character 

func hasCharacterBeenInserted(firstString: String, secondString: String) -> Bool{

    var characterBeenInserted: Bool = true
    if secondString.contains(firstString){
        if firstString.characters.count+1 == secondString.characters.count{
            characterBeenInserted = true
        }
    }
    else {
        characterBeenInserted = false
    }
    return characterBeenInserted
}


hasCharacterBeenInserted(firstString: "pale", secondString: "pales")