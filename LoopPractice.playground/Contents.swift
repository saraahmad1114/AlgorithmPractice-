//: Playground - noun: a place where people can play

import UIKit

//Find out the number of times 2 vowels appear next to each other 

var str = "Hello, playground"

var word = "cheese"

var wordArray = [String]()


var count = 0

var vowels = ["a", "e", "i", "o", "u"]


var results = [(String, Int)]()


for (index, char) in word.characters.enumerated() {
    //print(String(char).capitalized, index)
    if vowels.contains(String(char).lowercased()) {
        results.append((String(char), index))
        print(results)
    }
}


var previous = 0
for (i, n) in results {
    if n - previous == 1 {
        count += 1
    }
    previous = n
}


print(count)

    



