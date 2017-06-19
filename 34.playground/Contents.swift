//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//1. Write a function that accepts a String as its only parameter, and returns true if the string has only unique letters, taking letter case into account.

func isStringUnique (input: String) -> Bool {

    return input.characters.count == Set(input.characters).count

}

isStringUnique(input: "AaBbCc")

//returns true 

isStringUnique(input: "hello")

//returns false 

isStringUnique(input: "No duplicates")

//returns true 

//2. Write a function that accepts a String as its only parameter, and returns true if the string reads the same when reversed, ignoring case. 

func isInputPalindrome(input: String) -> Bool {
    
    return Array(input.lowercased().characters) == Array(input.lowercased().characters).reversed()

}

isInputPalindrome(input: "racecar")

//returns true

isInputPalindrome(input: "cake")

//returns false 

//3. Write a function that accepts two string parameters, and returns true if they contain the same characters in any order taking into account letter case. 

func letterFrequencyDictionary (input: String) -> [String: Int]{

    var dictionary = [String: Int]()
    
    for singleLetter in input.characters{
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

func doTheyContainTheSameChars (s1: String, s2: String) -> Bool {
    
    return letterFrequencyDictionary(input: s1) == letterFrequencyDictionary(input: s2)
}
