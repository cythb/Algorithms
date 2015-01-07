// Playground - noun: a place where people can play

import UIKit

/*
Suppose a sorted array is rotated at some pivot unknown to you beforehand.
(i.e., 0 1 2 4 5 6 7 might become 4 5 6 7 0 1 2).
*/

func binarySearch(a:[Int], t:Int) -> Int {
    var f = 0, l = a.count
    while f != l {
        var mid = f+(l-f)/2
        if a[mid] == t {
            return mid
        } else if a[mid] > t {
            l = mid
        } else {
            f = mid+1
        }
    }
    return -1
}

var A = [0,1,2,3,4,5,6,7,8]
binarySearch(A, 0)
binarySearch(A, 3)
binarySearch(A, 4)
binarySearch(A, 8)
binarySearch(A, 9)


func search(a:[Int], t:Int) -> Int {
    var f = 0, l = a.count
    while f != l {
        var mid = f+(l-f)/2
        if a[mid] == t {
            return mid
        }
//        println("\(f) \(l) \(mid)")
        // the first half is continuous
        if a[mid]>a[l-1] {
            if a[f] <= t && t <= a[mid] {
                l = mid
            } else {
                f = mid+1
            }
        } else {
            if a[mid] < t && t <= a[l-1] {
                f = mid+1
        } else {
                l = mid
            }
        }
    }
    return -1
}

var B = [3,4,5,6,7,8,0,1,2]

search(B, 3)
search(B, 4)
search(B, 5)
search(B, 6)
search(B, 7)
search(B, 8)
search(B, 0)
search(B, 2)
search(B, 9)


