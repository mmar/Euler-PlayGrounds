import Foundation

//: # Project Euler
//: ## Problem 1 - Multiples of 3 and 5
//: If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
//: Find the sum of all the multiples of 3 or 5 below 1000.

//: ### The brute force approach
//: Check which numbers below 1000 are multiples of 3 or 5 and add them all up.
let result = (1..<1000).filter { $0 % 3 == 0 || $0 % 5 == 0 }.reduce(0, +)
print(result)

//: ### A little more subtle
//: Create a `Set` with the multiples of 3 and 5 below 1000 and add them all up.
//: Using a plain `Array` would not work, since multiples of both 3 and 5 (mutiples of 15)
//: would get counted twice.
let result2 = Set( [3,5].flatMap { stride(from: 0, to: 1000, by: $0) }).reduce(0, +)
print(result2)

//: ### Alternatively
//: Avoid using a `Set` by subtracting the sum of the multiples of 15 in the range.
let result3 = ([3,5].flatMap { stride(from: 0, to: 1000, by: $0) }.reduce(0, +)) - stride(from: 0, to: 1000, by: 15).reduce(0, +)
print(result3)

//: [Previous](@previous), [Next](@next)
