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
func makeFrequencyDictionary (input:String) -> [String: Int] {

var dictionary = [String: Int]()

for i in 0..<str.characters.count {
    
    let currentChar = String(str[str.index(str.startIndex, offsetBy: i)])
    
    if dictionary[currentChar] == nil {
        dictionary[currentChar] = 1
    } else {
        dictionary[currentChar] = dictionary[currentChar]! + 1
    }
}
    return dictionary

}

func doStringsContainSameCharacters (s1: String, s2: String) -> Bool {

    return makeFrequencyDictionary(input: s1) == makeFrequencyDictionary(input: s2)
}

doStringsContainSameCharacters(s1: "abca", s2: "abca")






