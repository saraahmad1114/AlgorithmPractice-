//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Question: Assume you have a method isSubstring which checks if one word is a substring of another. Given two strings, s1 and s2, write code to check if s2 is a rotation of s1 usign only one call to isSubstring  
//Example: "waterbottle" and "erbottlewat"


func isSubstring (s1: String, s2: String) -> Bool{

    var isSubstring = false
    
    var s1s1 = s1 + s1
    
    if s1s1.contains(s2){
        isSubstring = true
    }
    else {
        isSubstring = false
    }
    
    return isSubstring

}


isSubstring(s1: "waterbottle", s2: "erbottlewat")


//Another way to solve using recursion 

func isRotation(s1: String, s2: String) -> Bool {
    
    var s1s1 = s1 + s1
    
    return s1s1.contains(s2)
}

isRotation(s1: "waterbottle", s2: "erbottlewat")



