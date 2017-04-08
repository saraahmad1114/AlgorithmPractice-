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

func createFrequencyDictionary (word: String)-> ([String: Int]){
    var dictionary = [String: Int]()
    for singleLetter in word.characters{
        var value = 0
        var stringSingleLetter = String(singleLetter)
        if dictionary[stringSingleLetter] == nil {
            value = dictionary[String(singleLetter)]!
            value = value + 1
        }
        else{
            value = 1
        }
    }
    return dictionary
}

hasCharacterBeenInserted(firstString: "pale", secondString: "pales")

func hasCharacterBeenRemoved(firstString: String, secondString: String) -> Bool{

    var characterBeenRemoved = true
    var counter = 0
    
    var firstDictionary = createFrequencyDictionary(word: firstString)
    var secondDictionary = createFrequencyDictionary(word: secondString)
    for (key, value) in firstDictionary{
        if secondDictionary.contains(where: key){
            counter = counter +1
        }
    }
    
    
    return characterBeenRemoved
}



