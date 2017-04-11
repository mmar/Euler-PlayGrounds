import Foundation

//: # Project Euler
//: ## Problem 3 - Largest prime factor
//: The prime factors of 13195 are 5, 7, 13 and 29.
//:
//: What is the largest prime factor of the number 600851475143 ?

//: ### Extending `Int`
//: Assuming a 64-bit platform, otherwise `Int64` would have to be used instead.
//: Test for divisors of `self` lesser than or equal to √`self`.
extension Int {
    var largestPrimeFactor: Int {
        switch self {
        case Int.min...1:
            return 1
        case 2,3:
            return self
        default:
            if let divisor = (2...Int(sqrt(Double(self)))).first(where: { self % $0 == 0 } ) {
                return (self / divisor).largestPrimeFactor
            } else {
                return self
            }
        }
    }
}

let result = 600_851_475_143.largestPrimeFactor
print(result)

//: [Previous](@previous), [Next](@next)
