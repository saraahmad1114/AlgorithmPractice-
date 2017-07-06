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

//39. Question: Extend collections with a function that returns an array of strings sorted by their lengths, longest first. 

extension Collection where Iterator.Element == String{
    func sortStringBasedOnLength (array: [String]) -> [String]{
        return self.sorted{$0.characters.count > $1.characters.count}
    }
}

//40. Question: Create a function that accepts an array of unsorted numbers from 1 to 100 where zero or more numbers might be missing and returns an array of the missing numbers. 

func returnArrayOfMissingNumbers(input: [Int]) -> [Int] {
    let correctArray = Array(1...100)
    var missingNumbers = [Int]()
    
    for number in correctArray {
        if !input.contains(number) {
            missingNumbers.append(number)
        }
    }
    
    return missingNumbers
}

//41. Write an extension to collections that accepts an array of Int and returns the median average, or nil if there are no values. 













