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

extension Collection where Iterator.Element == Int {

    func findMedian () -> Double? {
        guard count != 0 else {
            return nil
        }
        
        let sorted = self.sorted()
        let middleValue = sorted.count/2
        
        if sorted.count % 2 == 0 {
            return Double(sorted[middleValue]+sorted[middleValue-1])/2
        }
        else {
            return Double(sorted[middleValue])
        }
    }
}

[5, 6, 7, 8, 9].findMedian()

[5, 6, 7, 8, 9, 10].findMedian()


//42. Write an extension for all collections that reimplements the index(of:) method.

extension Collection where Iterator.Element: Equatable {
    func provideIndexOf (_ search: Iterator.Element) -> Int? {
        for (index, item) in self.enumerated() {
            if item == search {
                return index
            }
        }
        return nil
    }
}

//43. Create a linked list of lowercase English alphabet letters, along with a method that traverses all nodes and print their letters on a single line separated by spaces. 

class LinkedListNode<T> {
    var value: T
    var next: LinkedListNode?
    
    init(value: T) {
        self.value = value
    }
    

}

class LinkedList<T> {
    var start: LinkedListNode<T>?
    
    func printNodes() {
        var currentNode = start
        
        while let node = currentNode {
            print(node.value, terminator: " ")
            currentNode = node.next
        }
    }
    
    var centerNode: LinkedListNode<T>? {
        var slow = start
        var fast = start
        
        while fast != nil && fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }
        
        return slow
    }
}

var list = LinkedList<Character>()
var previousNode: LinkedListNode<Character>? = nil

for letter in "abcdefghijklmnopqrstuvwxyz".characters {
    let node = LinkedListNode(value: letter)
    
    if let predecessor = previousNode {
        predecessor.next = node
    } else {
        list.start = node
    }
    
    previousNode = node
}

list.printNodes()

//44. Extend your linked list class with a new method that returns the node at the mid point of the linked list using no more than one loop. 




















