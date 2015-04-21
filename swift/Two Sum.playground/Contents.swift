// Playground - noun: a place where people can play

import UIKit

/*
*/

// O(n)
func twoSum(a:[Int], t: Int) -> (Int, Int) {
    var dict = [Int:Int]()
    
    for var i=0; i<a.count; i++ {
        dict[a[i]] = i
    }
    
    for var i=0; i<a.count; i++ {
        let gap = t - a[i]
        if let found = dict[gap] {
            if found>i {
                return (i+1, found+1)
            }
        }
    }
    
    return (0,0)
}

twoSum([2,7,11,15], 9)
twoSum([-3,1,3,15], 0)

// nlog(n)
func twoSum2(a:[Int], t: Int) -> [(Int, Int)] {
    var r = a.sorted(<)
    var ret = [(Int, Int)]()
    
    var start = 0, end = r.count-1

    while start<end {
        if r[start]+r[end] < t {
            start++
        } else if r[start]+r[end] > t {
            end--
        } else {
            ret.append((r[start], r[end]))
            start++
            end--
        }
    }
    
    return ret
}

twoSum2([2,7,11,15], 9)
twoSum2([-3,1,3,15,-6,6], 0)

//func twoSum2(a:[Int], t: Int) -> [(Int, Int)] {
//        var r = a.sorted(<)
//        var ret = [(Int, Int)]()
//        
//        for var i=0; i<r.count; i++ {
//    if i>0 && r[i]==r[i-1] {
//            continue
//    }
//    var start = i, end = r.count-1
//    
//    while start<end {
//                if (r[start]+r[end] < t) {
//        
//                }
//    }
//    
//        }
//        
//        return ret
//}

/*
Given an array S of n integers, are there elements a,b,c in S such that a + b + c = 0? Find all unique triplets in the array which gives the sum of zero.
*/