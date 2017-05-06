import Foundation
/*:

 # Project Euler

 ## Problem 9 - Special Pythagorean triplet
 
 A Pythagorean triplet is a set of three natural numbers, _a_ < _b_ < _c_, for which,

 _a²_ + _b²_ = _c²_

 For example, 3² + 4² = 9 + 16 = 25 = 5².

 There exists exactly one Pythagorean triplet for which _a_ + _b_ + _c_ = 1000.

 Find the product _abc_.

 */

//: ### The brute force approach
let result = (3...997).flatMap { (c: Int) -> [Int] in (2..<min(c,999-c)).map { (b: Int) -> Int in let a = 1000 - b - c ; return a*a + b*b == c*c ? a*b*c : 0 } }.max()
print(result!)

//: [Previous](@previous), [Next](@next)
