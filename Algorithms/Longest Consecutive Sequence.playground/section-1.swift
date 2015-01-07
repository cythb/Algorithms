// Playground - noun: a place where people can play

import UIKit

/*


*/

func longestConsecutiveSequence(a:[Int]) -> Int {
    var dict = [Int: Bool]()
    
    for e in a {
        dict[e] = false
    }
    
    var longest = 0
    
    for e in a {
        if let visited = dict[e] {
            if visited {
                continue
            }
        }
        
        var l = 1
        dict[e] = true
        
        for var i = e+1; dict[i] != nil; i++ {
            l++
            dict[i] = true
        }
        
        for var i = e-1; dict[i] != nil; i-- {
            l++
            dict[i] = true
        }

        longest = max(longest, l)
    }
    
    return longest
}

longestConsecutiveSequence([1, 2, 3, 4])
longestConsecutiveSequence([100, 4, 200, 1, 3, 2])