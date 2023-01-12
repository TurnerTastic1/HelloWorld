//
//  main.swift
//  swift-hello-world
//
//  Created by Turner Naef on 1/12/23.
//
//  Using this site to learn some swift https://www.airpair.com/swift/complete-guide-to-swift#:~:text=Open%20a%20new%20Swift%20project%3A%201%20Launch%20Xcode,%22Language%22%20field%205%20Run%20your%20newly%20created%20project

import Foundation

print("Hello, World!")

print("This is to be sent to github from xcode!")

var optionalString: String? = "Temp"
optionalString = "Optional Strings are cool"
print(optionalString)

func sum(param1: Int, param2: Int) -> Int {
    return param1 + param2
}

print("The sum of 1 and 2 is \(sum(param1: 1, param2: 2))")
