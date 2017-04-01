//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Question: Given a string, write a function to check if it is a permutation of a palindrome. A palindrome is a word or phrase that is the same forwards and backwards. A permutation is a rearragement of letters. The palindrome does not need to be limited to just dictionary words. 


func ifPermutationOfPalindrome(firstString: String, secondString: String)-> Bool{

    var newFirstString = firstString
    var isPermutationOfPalindrome = true
    var reversedVersion = String(firstString.characters.reversed())
    
    if newFirstString == reversedVersion
    {
        
    }
    else{
        print("\(firstString) is not a palindrome")
    }

    return true
}