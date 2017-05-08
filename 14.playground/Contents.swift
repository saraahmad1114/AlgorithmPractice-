//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Question: The prime factors of 13195 are 5, 7, 13 and 29.

//What is the largest prime factor of the number 600851475143 ?


//With recursion

var currentPrime = 2

func findLargestPrimeFactorOf(number: Int) -> Int {
    if number <= 1 {
        return currentPrime
    }
    
    else if number % currentPrime == 0 {
        return findLargestPrimeFactorOf(number: number / currentPrime)
    } else {
        currentPrime += 1
        return findLargestPrimeFactorOf(number: number)
    }
}

findLargestPrimeFactorOf(number: 600851475143)


