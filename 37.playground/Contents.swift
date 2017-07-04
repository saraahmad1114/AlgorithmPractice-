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

//Another way using .filter

extension Collection where Iterator.Element == Int {

    func findCharCount(char: Character) -> Int {
        return self.reduce(0) {
            $0 + String($1).characters.filter { $0 == char }.count
        }
    }
}

//38. Question: Write an extension for all collections that returns the N smallest elements as an array, sorted smallest first, where N is an integer parameter 

extension Collection where Iterator.Element: Comparable {
    func sortArrayTill(count: Int) -> [Iterator.Element] {
        let sorted = self.sorted()
        return Array(sorted.prefix(count))
    }
}

[1, 2, 3, 4].sortArrayTill(count: 3)

//Another way to do the same problem 

extension Collection where Iterator.Element: Comparable{
    func sortArrayUpTo(num: Int) -> [Iterator.Element]{
    let newArray = Array(self.sorted{$0 < $1})
    return Array(newArray.prefix(num))
    }
}

[1, 2, 3, 4].sortArrayUpTo(num: 3)

//same result as above 











