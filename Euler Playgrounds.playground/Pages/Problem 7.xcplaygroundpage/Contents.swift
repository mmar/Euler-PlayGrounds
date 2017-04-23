import Foundation

//: # Project Euler
//: ## Problem 7 - 10001st prime
//: By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
//:
//: What is the 10 001st prime number?

//: ### The brute force approach
//: Create a `Sequence` of prime numbers and get the 10001st element.
let primes = sequence(state: []) { (state: inout [Int]) -> Int in
    if state.isEmpty {
        state = [2]
    } else if state.count == 1 {
        state += [3]
    } else if state.count == 2 {
        state += [5]
    } else {
        var next = state.last!
        repeat {
            next += 2
            if !state.lazy.prefix(while: { $0 <= Int(sqrt(Double(next))) }).contains(where: { next % $0 == 0} ) {
                state += [next]
                return state.last!
            }
        } while true
    }
    return state.last!
}
let result = Array(primes.prefix(10001)).last!
print(result)

//: ### The Sieve of Erastothenes
//: Build a list of Prime numbers up to a certain limit, hopefully bigger than the 10001st prime.
var sieve = Set(2...150_000)
for n in sieve.sorted() {
    guard sieve.contains(n) else { continue }
    stride(from: n * n, through: sieve.max()!, by: n).forEach { sieve.remove($0) }
}
let result2 = sieve.sorted()[10000]
print(result2)


//: [Previous](@previous), [Next](@next)
