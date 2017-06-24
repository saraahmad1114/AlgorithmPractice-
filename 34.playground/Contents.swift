//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//1. Write a function that accepts a String as its only parameter, and returns true if the string has only unique letters, taking letter case into account.

func isStringUnique (input: String) -> Bool {

    return input.characters.count == Set(input.characters).count

}

isStringUnique(input: "AaBbCc")

//returns true 

isStringUnique(input: "hello")

//returns false 

isStringUnique(input: "No duplicates")

//returns true 

//2. Write a function that accepts a String as its only parameter, and returns true if the string reads the same when reversed, ignoring case. 

func isInputPalindrome(input: String) -> Bool {
    
    return Array(input.lowercased().characters) == Array(input.lowercased().characters).reversed()

}

isInputPalindrome(input: "racecar")

//returns true

isInputPalindrome(input: "cake")

//returns false 

//3. Write a function that accepts two string parameters, and returns true if they contain the same characters in any order taking into account letter case. 
func makeFrequencyDictionary (input:String) -> [String: Int] {

var dictionary = [String: Int]()
    
var newInput = input
    
newInput = newInput.replacingOccurrences(of: " ", with: "")

for i in 0..<newInput.characters.count {
    
    let currentChar = String(input[input.index(input.startIndex, offsetBy: i)])
    
    if dictionary[currentChar] == nil {
        
        dictionary[currentChar] = 1
        
    } else {
        
        dictionary[currentChar] = dictionary[currentChar]! + 1
    }
}
    return dictionary

}

func doStringsContainSameCharacters (s1: String, s2: String) -> Bool {

    return makeFrequencyDictionary(input: s1) == makeFrequencyDictionary(input: s2)
}

doStringsContainSameCharacters(s1: "abca", s2: "abca")

//returns true 

doStringsContainSameCharacters(s1: "abc", s2: "cba")

//returns true

doStringsContainSameCharacters(s1: "abc", s2: "abca")

//returns false 

doStringsContainSameCharacters(s1: "abc", s2: "Abc")

//returns false 

doStringsContainSameCharacters(s1: "abc", s2: "cbAa")

//returns false

//Better way to do the following question would be also like this: 

func doInputShareCommonChar (s1: String, s2: String) -> Bool {
    
    if s1.contains(" ") || s2.contains(" "){
        return Array(s1.replacingOccurrences(of: " ", with: "").characters.sorted()) == Array(s2.replacingOccurrences(of: " ", with: "").characters.sorted())
    }

    return Array(s1.characters.sorted()) == Array(s2.characters.sorted())

}

doInputShareCommonChar(s1: "a1 b2", s2: "b 1a2")

//4. Write your own version of the contains() method on string that ignores letter case, and without using the existing method.

func areStringsSubstrings (s1: String, s2: String) -> Bool {
    return s2.range(of: s1) != nil
    
}
areStringsSubstrings(s1: "Hello", s2: "Hello, World")

//returns true

areStringsSubstrings(s1: "WORLD", s2: "Hello, World")

//returns false 

//5. write a function that accepts a string, and returns how many times a specific character appears, taking case into account.

func letterFrequencyCount (letter: String, s1: String) -> Int{

    var counter = 0
    
    for char in s1.characters{
        if String(char) == letter {
            counter += 1
        }
    }
    return counter
}

letterFrequencyCount(letter: "a", s1: "Sara")

//output = 2

letterFrequencyCount(letter: "a", s1: "The rain in Spain")

//output = 2

letterFrequencyCount(letter: "i", s1: "Mississippi")

//output = 4

letterFrequencyCount(letter: "i", s1: "Hacking with Swift")

//output = 3

//6. Write a function that accepts a string as its input, and returns the same string just with duplicate letters removed. 

//Remember Sets do not retain order like arrays do!

func removeDuplicates(input: String) -> String {
    
    let set = Set(input.characters)
    
    return String(set)

}

removeDuplicates(input: "Sara")

removeDuplicates(input: "hello")

removeDuplicates(input: "Mississippi")

//7. Write a function that returns a string with any consecutive spaces replaced with a single space. 

func replaceMultipleSpaces (input: String) -> String {

    var seenSpace = false
    var returnValue = ""
    
    for letter in input.characters {
        if letter == " " {
            if seenSpace { continue }
            seenSpace = true
        } else {
            seenSpace = false
        }
        
        returnValue.append(letter)
    }
    
    return returnValue
    
}

replaceMultipleSpaces(input: "  a   b   c")

//8. Write a function that accepts two strings, and returns true if one string is rotation of the other, taking letter case into account. 

func areStringsRotation (s1: String, s2: String) -> Bool {

    if s1.characters.count != s2.characters.count {
        return false
    }
    
    let s2s2 = s2 + s2
    
    let s1s1 = s1 + s1
    
    return s2s2.contains(s1) || s1s1.contains(s2)
    
}

areStringsRotation(s1: "abcde", s2: "eabcd")

//returns true

areStringsRotation(s1: "abcde", s2: "cdeab")

//returns true

areStringsRotation(s1: "abcde", s2: "abced")

//returns false 

//9. Write a function that returns true if it is given a string that is an English pangram, ignoring letter case.

//A pangram is a string that contains all the letters of the alphabet.

func isStringPangram(input: String) -> Bool {

    var letters = [Character]()
    
    for i in 97...122 {
        let char = Character(UnicodeScalar(i)!)
        letters.append(char)
    }
    
    var newInput = input.lowercased().replacingOccurrences(of: " ", with: "")
    
    print(newInput.characters.count)
    print(letters.count)
    
    return Set(newInput.characters).count == letters.count
}


isStringPangram(input: "The quick brown fox jumps over the lazy dog")

//returns true 

isStringPangram(input: "The quick brown fox jumped over the lazy dog")

//returns false 


//10. Given a String in English, return a tuple of containing the number of vowels and consonants. 

func countVowelsAndConsonants(input: String) -> (Int, Int){

    var vowelAndConsonants = (0,0)
    
    var vowels = ["a", "e", "i", "o", "u"]
    
    var newInput = input.lowercased().replacingOccurrences(of: " ", with: "")
    
    for char in newInput.characters{
        
        var newChar = String(char)
        
        if vowels.contains(newChar){
            vowelAndConsonants.0 += 1
        }
        else {
        vowelAndConsonants.1 += 1
            
        }
    }
    return vowelAndConsonants
}

print(countVowelsAndConsonants(input: "Swift Coding Challenges"))

countVowelsAndConsonants(input: "Mississippi")

//11. Write a function that accepts two strings, and returns true if they are identical in length but have no more than three different letters, taking case and string order in account.

func differenceInStrings (s1: String, s2: String) -> Bool {

    var counter = 0
    for char in s1.characters{
    
        if !s2.characters.contains(char){
            counter += 1
        }
    }
    
    return s1 == s2 || counter <= 3
}

differenceInStrings(s1: "Clamp", s2: "Cramp")

//returns true

differenceInStrings(s1: "Clamp", s2: "Crams")

//returns true 

differenceInStrings(s1: "Clamp", s2: "Grams")

//returns true 

differenceInStrings(s1: "Clamp", s2: "Grans")

//returns false 






    





    







