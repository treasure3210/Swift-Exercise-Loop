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


for index in 1...n9 {
    for jIndex in 1...n9 {
        if index == 1 || index == n9 || jIndex == 1 || jIndex == n9 {
            print("* ", terminator: "")
        } else {
            print("  ", terminator: "")
        }
    }
    print("")
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

for index in 1...n10 {
    for jIndex in 1...n10 {
        if index == jIndex || index + jIndex == n10 + 1 || index == 1 || index == n10 || jIndex == 1 || jIndex == n10 {
            print("* ", terminator: "")
        } else {
            print("  ", terminator: "")
        }
    }
    print("")
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
var index15 = 0

for _ in 1...n15 {
    let spaces15 = String(repeating: " ", count: n15 - index15 - 1)
    let asterisk15 = String(repeating: "* ", count: index15 + 1)
    print(spaces15 + asterisk15)
    index15 += 1
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
var jIndex = 0

/// Top part
for _ in 1...n16 {
    let spaces16 = String(repeating: " ", count: n16 - jIndex - 1)
    let asterisk16 = String(repeating: "* ", count: jIndex + 1)
    print(spaces16 + asterisk16)
    jIndex += 1
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

print("<----------- Solution 17 ----------->")

/// 17. Input n17, display likes pattern
/// Input:
///     n17 = 4
/// Output:
/// 1
/// 1 2
/// 1 2 3
/// 1 2 3 4

var n17 = 4

for i in 1...n17 {
    for j in 1...i {
        print("\(j) ", terminator: "")
    }
    print("")
}

print("<----------- Solution 18 ----------->")

/// 18. Input n18, display likes pattern
/// Input:
///     n18 = 4
/// Output:
/// 1
/// 2 2
/// 3 3 3
/// 4 4 4 4

var n18 = 4

for i in 1...n18 {
    print(String(repeating: "\(i) ", count: i))
}

print("<----------- Solution 19 ----------->")

/// 19. Input n19, display likes pattern
/// Input:
///     n19 ?? maybe 10?
/// Output:
///     1
///     2 3
///     4 5 6
///     7 8 9 10

var n19 = 10
var index19 = 0

for i in 1...n19 where index19 < n19 {
    for _ in 1...i {
        index19 += 1
        print("\(index19) ", terminator: "")
    }
    print("")
}

print("<----------- Solution 20 ----------->")

/// 20. Input n20, display likes pattern
/// Input:
///     n20 = 10?
/// Output:
///        1
///       2    3
///      4     5    6
///     7    8    9    10

var n20 = 10
var index20 = 0

for i in 1...n20 where index20 < n20 {
    for _ in 1...n20-i {
        print(" ", terminator: "")
    }
    for _ in 1...i {
        index20 += 1
        print("\(index20) ", terminator: "")
    }
    print("")
}

print("<----------- Solution 21 ----------->")

/// 21. Input n21, display likes pattern
/// Input:
///     n21 = 4
/// Output:
///     1 1 1 1 1 1 1 1
///     1 2 2 2 2 2 2 1
///     1 2 3 3 3 3 2 1
///     1 2 3 4 4 3 2 1
///     1 2 3 4 4 3 2 1
///     1 2 3 3 3 3 2 1
///     1 2 2 2 2 2 2 1
///     1 1 1 1 1 1 1 1

var n21 = 4
for index in 1...(n21*2) {
    for jIndex in 1...(n21*2) {
        let minValue = min(index, jIndex, n21*2+1-index, n21*2+1-jIndex)
        print(minValue, terminator: " ")
        // Find min for each line using nested for loops and print out the min for each inner code
        // print("min for index: \(index), min for jIndex: \(jIndex), min for n21*2+1-index: \(n21*2+1-index), min for n21*2+1-jIndex: \(n21*2+1-jIndex)")
    }
    print("")
}

print("<----------- Solution 22 ----------->")

/// 22. input n22 as UInt, convert n22 to binary
/// Input:
///     n22 = 2
/// Output:
///     10

var n22: UInt = 12
var binaryStored = ""

/// Using String - radix
let binaryRadix = String(n22, radix: 2)
print(binaryRadix)

/// Using For-Loop
for _ in 1...n22 {
    if Double(n22) / 2 > 0 {
        var binaryPart = n22 % 2
        print(binaryPart, terminator: "", to: &binaryStored) /// Store binary calculation data into binaryStored
        n22 /= 2
    }
}

for i in binaryStored.reversed() { /// reverse the order of binary for readability
    print(i, terminator: "")
}

print("")
print("<----------- Solution 23 ----------->")

/// 23. input n23 as UInt, convert n23 to Octal
/// Input:
///     n23 = 10
/// Output:
///     10

var n23: UInt = 10
var octalStored = ""

/// Using String - radix
let octalRadix = String(n23, radix: 8)
print(octalRadix)

/// Using For-Loop
for _ in 1...n23 {
    if Double(n23) / 8 > 0 {
        var octal = n23 % 8
        print(octal, terminator: "", to: &octalStored)
        n23 /= 8
    }
}

for i in octalStored.reversed() {
    print(i, terminator: "")
}

print("")
print("<----------- Solution 24 ----------->")

/// 24. Input n24 as UInt, convert n24 to Hex
/// Input:
///     n24 = 10
/// Output:
///     A

var n24: UInt = 10

var hexRadix = String(n24, radix: 16)
print(hexRadix)

//var hexStored = ""
//
//for _ in 1...n24 {
//    if Double(n24) / 16 > 0 {
//        var hex = n24 % 16
//        print(hex, terminator: "", to: &hexStored)
//        n24 /= 16
//    }
//}
//
//for item in hexStored.reversed() {
//    print(item, terminator: "")
//}

print("")
print("<----------- Solution 25 ----------->")

var n25 = 10
var binaryValue = ""

for item in binaryValue {
    switch item {
    case "0": n25 = n25 * 2
    case "1": n25 = n25 * 2 + 1
    default: break
    }
}
print(n25)

print("<----------- Solution 28 ----------->")
/// 28.
///

var n28 = 10
var primeNumberStored = ""

for index in 2...n28 {
        var isPrime = true
        for jIndex in 2..<index {
            if index % jIndex == 0 {
                isPrime = false
                break
            }
        }
        if isPrime {
            print(index)
        }
    }

print(primeNumberStored)
