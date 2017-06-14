//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Question: finding a value in an array of numbers, using the linear and binary search method 


func searchingLinearly(value: Int, array: [Int]) -> Bool{

    var foundValue = false
    
    for num in array {
    
        if num == value {
            foundValue = true
        }
    }

    return foundValue
}

searchingLinearly(value: 111, array: [1, 4, 5, 87, 9, 90, 101, 56, 111])
