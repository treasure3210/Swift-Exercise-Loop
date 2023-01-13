import UIKit

print("<----------- Solution 1 ----------->")

/// 1. Input n1, n1 is natural number, display the list of number from 0 to n1
/// Input:
///     n1 = 11
/// Output:
///     1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11

let n1 = 11

for i in 1...n1-1 {
    print(i, terminator: ", ")
    if i == n1-1 {
        print("\(i+1)")
    }
}

// Array Version
var nums = [Int]()

for i in 1...n1 {
    nums.append(i)
    if i == n1 {
        print("\(nums)")
    }
}

print("<----------- Solution 2 ----------->")

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

print("<----------- Solution 3 ----------->")

/// 3. Input n3, n3 is a natural number, calculate the sum of number from 1 to n3
/// Input:
///     n3 = 4
/// Output:
///     1 + 2 + 3 + 4 = 10

let n3 = 4
var totalSum = 0

for i in 1...n3 {
    totalSum += i
    if i < n3 {
        print(i, terminator: " + ")
    } else if i == n3 {
        print("\(i) = \(totalSum)")
    }
}

print("<----------- Solution 4 ----------->")

/// 4. Input n4, n4 is a natural number, calculate the average all numbers from 1 to n4
/// Input:
///     n4 = 4
/// Output:
///     (1 + 2 + 3 + 4) / 4 = 2.5

var n4 = 4
var subTotal = 0

for i in 1...n4 {
    subTotal += i
    if i == 1 {
        print("(\(i)", terminator: " + ")
    }
    if i > 1 && i < n4 {
        print(i, terminator: " + ")
    }
    if i == n4 {
        let average = Double(subTotal) / Double(n4)
        print("\(n4)) / \(i) = \(average)")
    }
}

print("<----------- Solution 5 ----------->")

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
        if i < n5-1 {
            print(i, terminator: " + ")
        }
    }
    if i == n5 {
        print("\(i-1) = \(n5Total)")
    }
}

print("<----------- Solution 6 ----------->")

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
        let average = Double(n6SubTotal) / Double(evenNumberCount) // in case of decimal numbers
        if i > 1 && i < n6 {
            print("(\(i)", terminator: " + ")
        }
        if i == n6 {
            print("\(i)) / \(evenNumberCount) = \(average)")
        }
    }
}

print("<----------- Solution 7 ----------->")

/// 7. Input n7, n7 is a natural number, display all n7 of dividor from 1 to n7
/// Input:
///      n7 = 10
/// Output:
///     1, 2, 5, 10

var n7 = 10
var dividor2 = 0

for i in 1...n7 {
    if n7 % i == 0 {
        dividor2 = i
        if i < n7 {
            print(dividor2, terminator: ", ")
        }
        if i == n7 {
            print(dividor2)
        }
    }
}

// Array Version
var dividor1 = [Int]()

for i in 1...n7 {
    if n7 % i == 0 {
        dividor1.append(i)
    }
    if i == n7 {
        print("\(dividor1)")
    }
}

print("<----------- Solution 8 ----------->")

/// 8. Input n8, display the square asterisk with n8 column and row.
/// Input:
///     n8 = 4
/// Output:
///     * * * *
///     * * * *
///     * * * *
///     * * * *

var n8 = 4

for _ in 1...n8 {
    print(String(repeating: "* ", count: n8))
}

print("<----------- Solution 9 ----------->")

/// 9. Input n9, display the border square asterisk with n column and row.
/// Input:
///     n9 = 4
/// Output:
///     * * * *
///     *          *
///     *          *
///     * * * *

var n9 = 4

for i in 1...n9 {
    if i == 1 || i == n9 {
        print(String(repeating: "* ", count: n9))
    } else {
        print("*", "*", separator: "     ")
    }
}

print("<----------- Solution 10 ----------->")

/// 10. Input n10, display the border square asterisk with n10 column and row and its diagonal line
/// Input:
///     n10 = 6
/// Output:
///     * * * * * *
///     * *     * *
///     *   * *   *
///     *   * *   *
///     * *     * *
///     * * * * * *

var n10 = 6

for i in 1...n10 {
    if i == 1 || i == n10 {
        print(String(repeating: "* ", count: n10))
    } else if i == 2 || i == n10-1 {
        print("* *", "* *", separator: "     ")
    } else if i > 2 || i < n10-1 {
        print("*   *", "*   *", separator: " ")
    }
}

print("<----------- Solution 11 ----------->")

/// 11. Input n row and m column, display rectangle asterisk with n row and m column.
/// Input:
///     nRow = 4
///     mColumn = 6
/// Output:
///     * * * * * *
///     * * * * * *
///     * * * * * *
///     * * * * * *

var nRow = 4
var mColumn = 6

for _ in 1...nRow {
    print(String(repeating: "* ", count: mColumn))
}

/// 12.
