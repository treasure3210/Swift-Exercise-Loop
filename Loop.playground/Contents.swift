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
        print("* " + String(repeating: "  ", count: n9 - 2) + "*")
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
///     nRow1 = 4
///     mColumn1 = 6
/// Output:
///     * * * * * *
///     * * * * * *
///     * * * * * *
///     * * * * * *

var nRow1 = 4
var mColumn1 = 6

for _ in 1...nRow1 {
    print(String(repeating: "* ", count: mColumn1))
}

print("<----------- Solution 12 ----------->")

/// 12. Input n row and m column, display the border rectangle asterisk with n row and m column.
/// Input:
///     nRow2 = 4
///     mColumn2 = 6
/// Output:
///     * * * * * *
///     *                   *
///     *                   *
///     * * * * * *

var nRow2 = 4
var mColumn2 = 6

for i in 1...nRow2 {
    if i == 1 || i == nRow2 {
        print(String(repeating: "* ", count: mColumn2))
    } else {
        print("* " + String(repeating: "  ", count: mColumn2 - 2) + "*")
    }
}

print("<----------- Solution 13 ----------->")

/// 13. Input n13, display the right angle triangle asterisk
/// Input:
///     n13 = 4
/// Output:
///     *
///     * *
///     * * *
///     * * * *

var n13 = 4

for i in 1...n13 {
    print(String(repeating: "* ", count: i))
}

print("Different Solution, using 2 for loops")

for i in 1...n13 {
    
    for _ in 1...i {
        print("* ", terminator: "")
    }
    print("")
}

print("<----------- Solution 14 ----------->")

/// 14. Input n14, display the left angle triangle asterisk
/// Input:
///     n14 = 4
/// Output:
///     * * * *
///     * * *
///     * *
///     *

var n14 = 4

for i in 1...n14 {
    for _ in stride(from: i, to: n14 + 1, by: 1) {
        print("* ", terminator: "")
    }
    print("")
}

print("<----------- Solution 15 ----------->")

/// 15. Input n15, display the pine asterisk
/// Input:
///     n15 = 5
/// Output:
///         *
///        *   *
///       *  *  *
///      *  *  *  *
///     *  *  *  *  *

var n15 = 5
var i = 0

for _ in 1...n15 {
    let spaces15 = String(repeating: " ", count: n15 - i - 1)
    let asterisk15 = String(repeating: "* ", count: i + 1)
    print(spaces15 + asterisk15)
    i += 1
}

print("<----------- Solution 16 ----------->")

/// 16. Input n16, display the diamond asterisk
/// Input:
///     n16 = 5
/// Output:
///         *
///        *   *
///       *  *  *
///      *  *  *  *
///     *  *  *  *  *
///      *  *  *  *
///       *  *  *
///        *   *
///         *

var n16 = 5
var j = 0

/// Top part
for _ in 1...n16 {
    let spaces16 = String(repeating: " ", count: n16 - j - 1)
    let asterisk16 = String(repeating: "* ", count: j + 1)
    print(spaces16 + asterisk16)
    j += 1
}

/// Lower part
for i in 1..<n16 {
    for _ in 1...i {
        print(" ", terminator: "")
    }
    for _ in 1...n16-i {
        print("*", terminator: " ")
    }
    print("")
}
