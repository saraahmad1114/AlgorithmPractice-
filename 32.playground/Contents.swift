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

linearSearchForValue(value: 2, array: [1, 4, 5, 9, 56, 87, 90, 101, 111])

//returns false 

linearSearchForValue(value: 111, array: [1, 4, 5, 9, 56, 87, 90, 101, 111])

//returns true 

//For binary Search, the array of numbers must be sorted first, then you will keep break the array in a halves and searching to find that value, you are looking for.

//Remember the array you are working with must be sorted already!

let numbersArray = [1, 2, 4, 6, 8, 9, 11, 13, 16, 17, 20]

func findValueUsingBinarySearch (value: Int, array: [Int]) -> Bool {
    
    var leftIndex = 0
    var rightIndex = array.count - 1
    
    while leftIndex <= rightIndex {
        var middleIndex = (leftIndex + rightIndex)/2
        var middleValue = array[middleIndex]
        if middleValue == value {
            return true
        }
    }
    return false
}

findValueUsingBinarySearch(value: 9, array: numbersArray)

//returns true

//Now to find 4

func findAnotherValueUsingBinarySearch (value: Int, array: [Int]) -> Bool {
    
    var leftIndex = 0
    var rightIndex = array.count - 1
    
    while leftIndex <= rightIndex {
        var middleIndex = (leftIndex + rightIndex)/2
        var middleValue = array[middleValue]
        
        //this will only work if you are looking for the absolute middle value 
        if middleValue == value {
            return true
        }
        
        
        
    }


    return false

}

