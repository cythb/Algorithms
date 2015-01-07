// Playground - noun: a place where people can play

import UIKit

extension String {
    subscript (i: Int) -> String {
        return String(Array(self)[i])
    }
    subscript (r: Range<Int>) -> String {
        return String(Array(self)[r])
    }
}

func distinctSubsequence(s: String, t: String) -> Int {
    let strlenS = countElements(s)
    let strlenT = countElements(t)
    if strlenS<strlenT {
        return 0
    }
    
    var opt = [[Int]](count: strlenS, repeatedValue: [Int](count: strlenT, repeatedValue: 0))
    for var i=0; i<strlenS; i++ {
        for var j=0; j<strlenT; j++ {
            if s[i] == t[j] {
                opt[i][j] = (i==0 || j==0) ? 1 :
                    // skip     + use
                    opt[i-1][j] + opt[i-1][j-1]
            } else {
                opt[i][j] = (i==0 || j==0) ? 0 : opt[i-1][j]
            }
        }
    }
    println("\(opt)")
    return opt.last!.last!
}

distinctSubsequence("rabbbit", "rabbit")

/*
Given a string S and a string T , count the number of distinct subsequences of T in S.
Here is an example: S = "rabbbit", T = "rabbit" Return 3.
*/