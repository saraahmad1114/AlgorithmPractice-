//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Shifting everything in an array: From HackerRank

func shifter(array: [Int], shiftIndex: Int) {
    let numArr: [Int] = array
    var newArray = numArr[shiftIndex..<numArr.count]
    newArray += numArr[0..<shiftIndex]
    
    print("This is the new array")
    print(newArray)
    print("This is the new array")
}
var newArray = [1, 2, 3, 4, 5]

shifter(array: newArray, shiftIndex: newArray.count-1)