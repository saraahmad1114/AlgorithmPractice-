//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Question: Asssume you have a method isSubstring which checks if one word is a substring of another. Given two strings s1 and s2, write code to check if s2 is a rotaton of s1 using only one call to isSubstring (e.g., "waterbottle" is a rotation of "erbottlewat")

func isSubstring(s1: String, s2: String) -> Bool{

    var isSubString = true

    if s1.characters.count != s2.characters.count{
        isSubString = false
    }
    else{
        var s1s1 = s1 + s1
        if s1s1.contains(s2){
            isSubString = true
        }
    }
    return isSubString
}

isSubstring(s1: "waterbottle", s2: "erbottlewat")
