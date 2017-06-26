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


