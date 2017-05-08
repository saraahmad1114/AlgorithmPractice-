//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Question: Given an input of a radius, return the area of a circle.  
//Formula equals to area = pie(r^2)

func findAreaOfCircle (radius: Double) -> Double{

    var areaOfCircle = Double()
    
    areaOfCircle = 3.14 * pow(radius, Double(2))
    
    return areaOfCircle

}

findAreaOfCircle(radius: 3.15)