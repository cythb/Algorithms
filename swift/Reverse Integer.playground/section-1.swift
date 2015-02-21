// Playground - noun: a place where people can play

import UIKit

func reverse(n: Int) -> Int {
    var r = 0
    for var n=n; n != 0; n /= 10 {
        r = r*10 + n%10
    }
    return r
}

reverse(123)
reverse(-123)

/*
Reverse digits of an integer.
*/