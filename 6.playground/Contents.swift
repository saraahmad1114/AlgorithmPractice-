//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Question: Given a string, write a function to check if it is a permutation of a palindrome. A palindrome is a word or phrase that is the same forwards and backwards. A permutation is a rearragement of letters. The palindrome does not need to be limited to just dictionary words. 

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


func ifPermutationOfPalindrome(firstString: String, secondString: String)-> Bool{

    var newFirstString = firstString
    var isPermutationOfPalindrome = true
    var reversedVersion = String(firstString.characters.reversed())
    
    if newFirstString == reversedVersion
    {
        
    }
    else{
        isPermutationOfPalindrome = false
        //print("\(firstString) is not a palindrome")
    }

    return isPermutationOfPalindrome
}