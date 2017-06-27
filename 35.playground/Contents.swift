//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Chapter 2: Numbers 

//16. Write a function that counts 1 to 100 and prints "Fizz" if the counter is evenly divisible by 3, "Buzz" if it evenly divisible by 5, "FizzBuzz" if its evenly divisble by 3 and 5, or the counter number for all other cases 

func fizzBuzz () {

    for i in 1...100 {
        if i % 3 == 0 && i % 5 == 0 {
            print("FizzBuzz")
        }
        else if i % 5 == 0 {
            print("Buzz")
        }
        else if i % 3 == 0 {
            print("Fizz")
        }
        else {
            print(i)
        }
    }
}

fizzBuzz()

//17. Write a function that accepts positive minimum and maximum integers, and returns a random number between those two bounds, inclusive. 

func generateRandomNum (min: Int, max: Int) -> Int {
    
    return Int(arc4random_uniform(UInt32(max - min + 1))) + min

}

generateRandomNum(min: 12, max: 18)


//18. Create a function that accepts positive two integers, and raises the first to the power of the second. 

func power(firstInt: Int, secondInt: Int) -> Int {
    
    var returnValue = firstInt
    
    for _ in 1..<secondInt{
        
        returnValue *= firstInt
    }
    
    return returnValue

}
power(firstInt: 4, secondInt: 3)

//returns 64

power(firstInt: 2, secondInt: 8)

//returns 256

//Another way to do this problem 

func powerMethodTwo(firstInt: Int, secondInt: Int) -> Int {

    if secondInt == 1 {
        return firstInt
    }
    return firstInt * powerMethodTwo(firstInt: firstInt, secondInt: secondInt - 1)
}

powerMethodTwo(firstInt: 4, secondInt: 3)

//returns 64

powerMethodTwo(firstInt: 2, secondInt: 8)

//returns 256

//19. Swap two positive variable integers, a and b without using a temporary variable. 



