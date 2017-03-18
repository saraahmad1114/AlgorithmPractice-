//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Given two strings,write a method to decide if one is a permutation of the other.
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

func findPermutations(stringOne: String, stringTwo: String) -> Bool{
    
    var isPermutation: Bool = true
    if stringOne.characters.count != stringTwo.characters.count {
        isPermutation = false
    }
    else {
        var stringOneDictionary = createFrequencyDictionary(word: stringOne)
        var stringTwoDictionyar = createFrequencyDictionary(word: stringTwo)
        if stringOneDictionary == stringTwoDictionyar{
            isPermutation = true
        }
        else {
            isPermutation = false
        }
    }
    return isPermutation
}
var stringOne = "ate"
var stringTwo = "eat"

