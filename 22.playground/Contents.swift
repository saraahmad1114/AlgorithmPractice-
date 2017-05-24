//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//Question: Write an algorithm such that if an element in an MxN matrix is 0, its entire row and column are set to 0. 


func markRowAndColumn(input: [[Int]]) -> [[Int]] {
    
    var matrix: [[Int]] = input
    let M: Int = matrix.first!.count
    let N: Int = matrix.count
    var coordinates: [[Int]] = []
    
    
    // finding if any contain a "0" in any row or column
    for y in 0..<N {
        for x in 0..<M {
            if matrix[y][x] == 0 {
                coordinates.append([x, y])
            }
        }
    }
    
    // make all the columns and row zero
    for coord in coordinates {
        
        let x = coord.first!
        
        let y = coord.last!
        
        //make row "0"
        for i in 0..<M {
            matrix[y][i] = 0
        }
        
        //make column "0"
        for j in 0..<N {
            matrix[j][x] = 0
        }
        
    }
    
    return matrix
}

var matrix = [[1, 2, 3, 4, 5],
              [0, 1, 4, 7, 9]]

print(markRowAndColumn(input: matrix))

//[[0, 2, 3, 4, 5], [0, 0, 0, 0, 0]]




