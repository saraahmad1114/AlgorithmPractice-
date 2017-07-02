//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Chapter 4: Collections 

//37. Question: Write an extension for collections of integers that returns the number of times a specific digit appears in any of its numbers. 

extension Collection where Iterator.Element == Int {
    func characterCount(char: Character) -> Int {
        var total = 0
        for item in self {
            let str = String(item)
            for individualChar in str.characters {
                if individualChar  == char {
                    total += 1
                }
            }
        }
        return total
    }
}

[5, 15, 55, 515].characterCount(char: "5")

//returns 6

[5, 15, 55, 515].characterCount(char: "1")

//returns 2 

[55555].characterCount(char: "5")

//returns 5 

[55555].characterCount(char: "1")

//returns 0






