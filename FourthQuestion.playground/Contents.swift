//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"



func createDicitonary (str1: String, str2: String)-> ([String: Int], [String: Int]){
    
    var dict1 : [String: Int] = [:]
    
    var dict2: [String: Int] = [:]
    
for i in 0..<str1.characters.count {
    
    let currentChar1 = String(str1[str1.index(str1.startIndex, offsetBy: i)])
    let currentChar2 = String(str2[str2.index(str2.startIndex, offsetBy: i)])
    
    if dict1[currentChar1] == nil {
        dict1[currentChar1] = 1
    } else {
        dict1[currentChar1] = dict1[currentChar1]! + 1
    }
    
    if dict2[currentChar2] == nil {
        dict2[currentChar2] = 1
    } else {
        dict2[currentChar2] = dict2[currentChar2]! + 1
    }
}
    
    return (dict1, dict2)
}

func findPermutations(stringOne: String, stringTwo: String) -> Bool{
    
    var isPermutation: Bool = true
    if stringOne.characters.count != stringTwo.characters.count {
        isPermutation = false
    }
    else {
        var stringOneDictionary = createDicitonary(str1: stringOne, str2: stringTwo)
        if stringOneDictionary.0 == stringOneDictionary.1{
            isPermutation = true
        }
        else {
            isPermutation = false
        }
    }
    return isPermutation
}


var stringOne = "ate"
var stringTwo = "bea"

print(createDicitonary(str1: stringOne, str2: stringTwo))

findPermutations(stringOne: stringOne, stringTwo: stringTwo)

//String(str[str.index(str.startIndex offsetBy:i)])

//String(str[str.index(str.startIndex offsetBy:i)] 

