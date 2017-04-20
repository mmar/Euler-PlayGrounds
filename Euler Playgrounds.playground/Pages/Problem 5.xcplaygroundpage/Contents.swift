import Foundation

//: # Project Euler
//: ## Problem 5 - Smallest multiple
//: 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
//:
//: What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

//: ### Finding the Least Common Multiple using the Greatest Common Divisor
func gcd(_ a: Int, _ b: Int) -> Int {
    let r = a % b
    return r != 0 ? gcd(b, r) : b
}

func lcm(_ a: Int, _ b: Int) -> Int {
    guard a != 0 || b != 0 else { return 0 }
    return abs(a * b) / gcd(a, b)
}

let result = (1...20).reduce(1, lcm)
print(result)

//: [Previous](@previous), [Next](@next)
