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
    
var newInput = input
    
newInput = newInput.replacingOccurrences(of: " ", with: "")

for i in 0..<newInput.characters.count {
    
    let currentChar = String(input[input.index(input.startIndex, offsetBy: i)])
    
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

//returns true 

doStringsContainSameCharacters(s1: "abc", s2: "cba")

//returns true

doStringsContainSameCharacters(s1: "abc", s2: "abca")

//returns false 

doStringsContainSameCharacters(s1: "abc", s2: "Abc")

//returns false 

doStringsContainSameCharacters(s1: "abc", s2: "cbAa")

//returns false

//Better way to do the following question would be also like this: 

func doInputShareCommonChar (s1: String, s2: String) -> Bool {
    
    if s1.contains(" ") || s2.contains(" "){
        return Array(s1.replacingOccurrences(of: " ", with: "").characters.sorted()) == Array(s2.replacingOccurrences(of: " ", with: "").characters.sorted())
    }

    return Array(s1.characters.sorted()) == Array(s2.characters.sorted())

}

doInputShareCommonChar(s1: "a1 b2", s2: "b 1a2")
    







