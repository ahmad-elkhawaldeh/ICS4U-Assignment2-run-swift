//
//  Run.swift
//
//  Created by Ahmad El-khawaldeh
//  Created on 2020-01-01
//  Version 1.0
//  Copyright (c) 2020 MTHS. All rights reserved.
//
//  The Run program
//

import Foundation
import Glibc

enum MyError: Error {
case invalidDouble(String)
}

func findLongestWord(str: String) -> Int {
    var count = 0
    if str.count > 0 {
        count = 1
    }
    var maxCount = count

    for index in str.indices {
        if index != str.startIndex && str[str.index(before: index)] == str[index] {
            count += 1
        } else {
            count = 1
        }
        maxCount = max(maxCount, count)
       }
       return maxCount
}

print("input a string")
let input1 = readLine()
var num = Int(input1!)
if num != nil {
print("ERROR this is a number. Enter a string")
} else {
print( findLongestWord(str: input1!))
}
