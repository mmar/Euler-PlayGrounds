import Foundation

//: # Project Euler
//: ## Problem 6 - Sum square difference
//: The sum of the squares of the first ten natural numbers is,
//:
//: 1² + 2² + ... + 10² = 385
//: The square of the sum of the first ten natural numbers is,
//:
//: (1 + 2 + ... + 10)² = 55² = 3025
//: Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
//:
//: Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

//: ### The brute force approach
//: Closures.
let result = {$0 * $0}( (1...100).reduce(0, +) ) - (1...100).reduce(0, { $0 + $1 * $1 } )
print(result)

//: [Previous](@previous), [Next](@next)
