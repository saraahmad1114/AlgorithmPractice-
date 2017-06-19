//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Question: Write a function that accepts a String as its only parameter, and returns true if the string has only unique letters, taking letter case into account. 

func isStringUnique (input: String) -> Bool {

    return input.characters.count == Set(input.characters).count

}

isStringUnique(input: "AaBbCc")

//returns true 

isStringUnique(input: "hello")

//returns false 

isStringUnique(input: "No duplicates")

//returns true 
