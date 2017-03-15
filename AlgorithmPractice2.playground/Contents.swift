//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Implement an algorithm to determine if a string has all unique characters. What if you cannot use additional data structures?

func findIfStringsAreUnique (firstString: String)-> Bool{
    return firstString.characters.count == Set(firstString.characters).count
}

//The idea behind this algorithm solution was that if a string is given then calling .character would break it down considering every character and then using .count to look at the number of characters. When you create a Set, by default all the duplicates are deleted so to compare the number of characters in the regular string to the number of strings in a set would indicated whether there are duplicates or not. 
