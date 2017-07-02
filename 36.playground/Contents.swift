//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//27. Question: Write a function that accepts a filename on disk, then prints its last N lines in reverse order, all on a single line separated by commas

func getInformationFrom (filename: String, lineCount: Int) {
    
    guard let input = try? String(contentsOfFile: filename) else { return }
    
    var lines = input.components(separatedBy: "\n")
    guard lines.count > 0 else { return }
    
    lines.reverse()
    
    for i in 0 ..< min(lines.count, lineCount) {
        print(lines[i])
    }
}

//28. Question: Write a logging function that accepts a path to a log file on disk as well as a new log message. Your function should open the log file (or create it if it doesn't already exist), then append the new message to the log along with the current time and date. 

func writeA(log message: String, to logFile: String) {
    
    var existingLog = (try? String(contentsOfFile: logFile)) ?? ""
    
    existingLog.append("\(Date()): \(message)\n")
    
    do {
        try existingLog.write(toFile: logFile, atomically: true, encoding: .utf8)
    } catch {
        print("Failed to write to log: \(error.localizedDescription)")
    }
}

//29. Question: Write a function that returns a URL to the user's documents directory 





