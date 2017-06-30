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

func swapPositiveIntegers (a: inout Int, b: inout Int) -> (Int, Int){
    
    var tempA = a
    var tempB = b
    
    (tempA, tempB) = (tempB, tempA)

    return (tempA, tempB)
    
}

//swapPositiveIntegers(a: &8, b: &9)

//20. Write a function that accepts an integer as its parameter and returns true if the number is prime. 

//A prime number is only divisible by 1 and itself hence it will be num % num == 0

func isNumberPrime (num: Int) -> Bool {
    
    if num <= 2 {
        return true }
    
    for i in 2 ..< num {
        if num % i == 0 {
            return false
        }
    }
    
    return true
}

isNumberPrime(num: 2)

//returns true

isNumberPrime(num: 13)

//returns true

isNumberPrime(num: 4)

//returns false

isNumberPrime(num: 9)

//returns false

isNumberPrime(num: 11)

//returns true

isNumberPrime(num: 13)

//returns true

isNumberPrime(num: 16777259)

//returns true 

//20. Create a function that accepts any positive integer and returns the next higher and next lowest number that has the same number of ones in its binary representation. If either number is not possible, return nil for it. 

func findNextHigherAndLowerBinaryNum (number: Int) -> (nextHighest: Int?, nextLowest: Int?){

    let targetBinary = String(number, radix:2)
    let targetOnes = targetBinary.characters.filter { $0 == "1"}.count
    
    var nextHighest: Int? = nil
    var nextLowest: Int? = nil
    
    for i in number + 1...Int.max{
        
        let currentBinary = String(i, radix:2)
        
        let currentOnes = currentBinary.characters.filter { $0 == "1"}.count
        
        if targetOnes == currentOnes {
            nextHighest = i
            break
        }
    }
    
    for i in (0..<number).reversed(){
        
        let currentBinary = String(i, radix: 2)
        let currentOnes = currentBinary.characters.filter{$0 == "1"}.count
        
        if targetOnes == currentOnes{
            nextLowest = i
            break
        }
    }
    
return (nextHighest, nextLowest)

}

findNextHigherAndLowerBinaryNum(number: 12)

//returns 17 and 10

findNextHigherAndLowerBinaryNum(number: 28)

//returns 35 and 26

//21. Create a function that accepts an unsigned 8-bit integer and returns its binary reverse, padded so that it holds precisely eight binary digits 

func getBinaryReverseFromInt (number: Int) -> Int {
    
    let binary = String(number, radix: 2)
    
    let paddingAmount = 8 - binary.characters.count
    
    let paddedBinary = String(repeating: "0", count: paddingAmount) + binary
    
    let reversedBinary = String(paddedBinary.characters.reversed())
    
    return Int(UInt(reversedBinary, radix: 2)!)

}

getBinaryReverseFromInt(number: 32)

getBinaryReverseFromInt(number: 41)

func isStringAnInt(string: String) -> Bool {
    
    return Int(string) != nil
}

isStringAnInt(string: "01010101")

//returns true

isStringAnInt(string: "123456789")

//returns true

isStringAnInt(string: "9223372036854775808")

//returns true

//24. Given a string that contains both letters and numbers, write a function that pulls out all the numbers then returns their sum. 

//Key Here: when you convert something into a character, or use the .characters property, its wise that you convert it back into a string and then do what you need to do.

func findIntegersInString (input: String) -> Int {

    var sum = 0
    
    for char in input.characters{
    
        var newChar = String(char)
        
        if Int(newChar) != nil {
            sum += Int(newChar)!
        }
    }
    
    return sum

}

findIntegersInString(input: "a1b2c3")

//returns 6

findIntegersInString(input: "a10b20c30")

//returns 6 

//25. Write a function that returns the square root of a positive integer, rounded down to the nearest integer, without using sqrt().

func findSquareRoot (number: Int) -> Int? {

    var squareRoot: Int? = nil
    
    for i in 1...Int.max{
        if i*i == number{
            squareRoot = i
            break
        }
    }
    
    return squareRoot!

}

findSquareRoot(number: 9)

//returns 3 

findSquareRoot(number: 42)

















