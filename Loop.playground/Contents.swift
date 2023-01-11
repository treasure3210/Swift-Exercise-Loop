import UIKit

/// 1. Input n1, n1 is natural number, display the list of number from 0 to n1
/// Input:
///     n1 = 11
/// Output:
///     1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11

let n1 = 11
var nums = [Int]()

for i in 1...n1 {
    nums.append(i)
    if i == n1{
    print(nums)
    }
}

/// 2. Input n2, display the multiplication table of n2
/// Input:
///     n2 = 2
/// Output:
///     2 x 1 = 2
///     2 x 10 = 20

let n2 = 2

for i in 1...10 {
    print("\(n2) x \(i) = \(n2*i)")
}

/// 3. Input n3, n3 is a natural number, calculate the sum of number from 1 to n3
/// Input:
///     n3 = 4
/// Output:
///     1 + 2 + 3 + 4 = 10

let n3 = 4
var totalSum = 0

for i in 1...n3 {
    totalSum += i
    print("\(i) +", terminator: " ")
    if i == n3 {
        print("= \(totalSum)")
    }
}
