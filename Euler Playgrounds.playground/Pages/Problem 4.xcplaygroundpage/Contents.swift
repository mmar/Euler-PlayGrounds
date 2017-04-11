import Foundation

//: # Project Euler
//: ## Problem 4 - Largest palindrome product
//: A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
//:
//: Find the largest palindrome made from the product of two 3-digit numbers.

//: ### The brute force approach
//: Get all possible products, check which ones are palindromes and then pick the largest.
let result = stride(from: 999, through: 100, by: -1).flatMap { a in stride(from: a, through: 100, by: -1).map { b in a * b } }.filter { "\($0)" == String("\($0)".characters.reversed()) }.max()!
print(result)

//: [Previous](@previous), [Next](@next)
