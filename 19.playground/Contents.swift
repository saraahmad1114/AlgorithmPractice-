//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Write a function, where given three integers as separate inputs, it returns the middle (or median) value?
//For example:
//2, 2, 5 -> 2
//5, 0, 8 -> 5
//3, -2, -1 -> -1

//function: given three integers, returns the middle value

func returMedianValue (input: Int, inputOne: Int, inputTwo: Int) -> Int {
    
    var medianValue = 0
    
    var array = [Int]()
    
    array.append(input)
    array.append(inputOne)
    array.append(inputTwo)
    
    var maxVal = array.max()
    var minVal = array.min()
    
    for num in array {
        if num != maxVal && num != minVal {
            medianValue = num
        }
    }
    return medianValue
}


//Withouth using an array

//(5, 0, 8)
//(2,2,5)

func returnMedianValueWithoutArray (input : Int, inputOne: Int, inputTwo: Int) -> Int
{
    var medianValue = 0
    
    if input >= inputOne && input <= inputTwo {
        medianValue = input
    }
        
    else if inputOne <= input && inputOne >= inputTwo{
        medianValue = inputOne
    }
        
    else {
        medianValue = inputTwo 
    }
    
    return medianValue
}
