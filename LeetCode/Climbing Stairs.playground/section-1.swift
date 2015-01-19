// Playground - noun: a place where people can play

import UIKit

func climbingStairs(n: Int) -> Int {
    // f[0] = 0
    // f[1] = 1
    // f[2] = 2
    // f[3] = 3
    var prevSteps = 0
    var steps = 1
    
    for i in 2..<n {
        var temp = steps
        steps += prevSteps
        prevSteps = temp
    }
    
    return steps
}

/*
You are climbing a stair case. It takes n steps to reach to the top.
*/