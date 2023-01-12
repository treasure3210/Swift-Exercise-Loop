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
    print("1. \(nums)")
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
    print("2. \(n2) x \(i) = \(n2*i)")
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
    if i == n3 {
        print("3. \(totalSum)")
    }
}

/// 4. Input n4, n4 is a natural number, calculate the average all numbers from 1 to n4
/// Input:
///     n4 = 4
/// Output:
///     (1 + 2 + 3 + 4) / 4 = 2.5

var n4 = 4
var subTotal = 0

for i in 1...n4 {
    subTotal += i
    if i == n4 {
        let average = Double(subTotal) / Double(n4)
        print("4. \(average)")
    }
}

/// 5. Input n5, n5 is a natural number, display the sum of odd numbers from 1 to n5
/// Input:
///     n5 = 4
/// Output:
///     1 + 3 = 4

var n5 = 4
var n5Total = 0

for i in 1...n5 {
    if i % 2 != 0 {
        n5Total += i
    }
    if i == n5 {
        print("5. \(n5Total)")
    }
}

/// 6. Input n6, n6 is a natural number, display the average of all even numbers from 1 to n6
/// Input:
///     n6 = 4
/// Output:
///     (2 + 4) / 2 = 3

var n6 = 4
var n6SubTotal = 0
var evenNumberCount = 0

for i in 1...n6 {
    if i % 2 == 0 {
        n6SubTotal += i
        evenNumberCount += 1
    }
    let average = Double(n6SubTotal) / Double(evenNumberCount) // in case of decimal numbers
    if i == n6 {
        print("6. \(average)")
    }
}


/// 7. Input n7, n7 is a natural number, display all n7 of dividor from 1 to n7
/// Input:
///      n7 = 10
/// Output:
///     1, 2, 5, 10

var n7 = 10
var dividor1 = [Int]()

for i in 1...n7 {
    if n7 % i == 0 {
        dividor1.append(i)
    }
    if i == n7 {
        print("7. \(dividor1)")
    }
}

///
