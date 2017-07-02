//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Question: Write a function that accepts a filename on disk, then prints its last N lines in reverse order, all on a single line separated by commas 

func challenge27(filename: String, lineCount: Int) {
    
    guard let input = try? String(contentsOfFile: filename) else { return }
    
    var lines = input.components(separatedBy: "\n")
    guard lines.count > 0 else { return }
    
    lines.reverse()
    
    for i in 0 ..< min(lines.count, lineCount) {
        print(lines[i])
    }
}

