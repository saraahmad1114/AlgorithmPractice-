//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Question: finding a value in an array of numbers, using the linear and binary search method 


func linearSearchForValue(value: Int, array: [Int]) -> Bool{
    for num in array {
        if num == value {
            return true
        }
    }
    return false
}

linearSearchForValue(value: 2, array: [1, 4, 5, 87, 9, 90, 101, 56, 111])

//returns false 

linearSearchForValue(value: 111, array: [1, 4, 5, 87, 9, 90, 101, 56, 111])

//returns true 

func binarySearchForValue (value: Int, array: [Int]) -> Bool {


    return false
}


