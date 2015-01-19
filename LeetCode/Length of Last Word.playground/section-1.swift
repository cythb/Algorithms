// Playground - noun: a place where people can play

import UIKit


func lengthOfLastWord(s: String) -> Int {
    let words = s.componentsSeparatedByString(" ")
    if let lastWord = words.last {
        return countElements(lastWord)
    } else {
        return 0
    }
}

lengthOfLastWord("hello world")

/*
*/