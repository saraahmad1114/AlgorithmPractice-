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

//A binary search efficiently allows us to find a certain value in an array, where the numbers are already sorted. First we begin my breaking the array in half and looking for the number in the center and from there we will proceed to find the number either on the left if it is less than the middle value or the on the right if it is greater than the middle value

func findAnotherValueUsingBinarySearch (value: Int, array: [Int]) -> Bool {
    
    var leftIndex = 0
    var rightIndex = array.count - 1
    
    while leftIndex <= rightIndex {
        var middleIndex = (leftIndex + rightIndex)/2
        var middleValue = array[middleIndex]
        
        
        //if the given value is equal and in the middle value of the array
        if middleValue == value {
            return true
        }
        
        //if the given value is less than the middle value of the array
        if value < middleValue {
            rightIndex = middleIndex - 1
        }
        
        //if the given value is greater than the middle value of the array
        if value > middleValue {
            leftIndex = middleIndex + 1
        }
     
    }
    return false
}

findAnotherValueUsingBinarySearch(value: 18, array: numbersArray)

//returns false

findAnotherValueUsingBinarySearch(value: 17, array: numbersArray)

//returns true

findAnotherValueUsingBinarySearch(value: 16, array: numbersArray)

//returns true



