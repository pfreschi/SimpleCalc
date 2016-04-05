//
//  main.swift
//  SimpleCalc
//
//  Created by Peter Freschi on 4/4/16.
//  Copyright © 2016 Peter Freschi. All rights reserved.
//

import Foundation
print("Enter an expression separated by returns or write a multi-operand operation:")
let terminators = ["count", "avg", "fact"]
let operations = ["+", "-", "*", "/", "%"]
var count = 0
var sum = UInt.init()
var response = readLine(stripNewline: true)!
let numbers = response.componentsSeparatedByString(" ")
if (!response.containsString(" ")) {
        var current = UInt.init(response)!
        let operation = readLine(stripNewline: true)!
        let secondInput = readLine(stripNewline: true)!
        var second = UInt.init(secondInput)!
        switch operation {
            case "+":
                current+=second
            case "-":
                current-=second
            case "*":
                current*=second
            case "/":
                current/=second
            case "%":
                current%=second
            default:
                print("invalid operation")
        }
        print("Result: \(current)");
        sum+=UInt.init(response)!
    
} else if (response.containsString("count")){
    for number in numbers {
        if (number != "count") {
            count += 1;
        }
    }
    print("Count: \(count)")
    
} else if (response.containsString("avg")){
    for number in numbers {
        if (number != "avg") {
            count += 1;
            sum += UInt.init(number)!
        }
    }
    print("Average: \(sum/UInt(count))")

} else if (response.containsString("fact")){
    var number = UInt.init(numbers[0])
    var result = UInt.init(1);
    for index in 1...Int(number!) {
        result = result*UInt(index)
    }
    print("Factorial: \(result)")
}