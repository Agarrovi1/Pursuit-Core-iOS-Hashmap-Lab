import Foundation

// Find the most frequently occurring character in a given string

func mostFrequentlyOccurringChar(in str: String) -> Character {
    var frequencyDict = [Character:Int]()
    for a in str {
        if let freq = frequencyDict[a] {
            frequencyDict[a] = freq + 1
        } else {
            frequencyDict[a] = 1
        }
    }
    var highestCount = 0
    var answer = Character(" ")
    for (key,value) in frequencyDict {
        if highestCount < value {
            answer = key
            highestCount = value
        }
    }
    return answer
}

// Find the first indicies whose values sum to a given number

func pairSum(arr: [Int], target: Int) -> (Int, Int) {
    var indexAndNum = [Int:Int]()
    for (index,value) in arr.enumerated() {
        indexAndNum[index] = value
    }
    for a in 0...arr.count - 1 {
        for (index,value) in indexAndNum {
            if a == index {
                continue
            }
            if arr[a] + value == target {
                return (a,index)
            }
        }
    }
    return (0, 0)
}

// Find the second most frequently occurring character in a given string

func secondMostFrequentlyOccurringChar(in str: String) -> Character {
    let mostFreqChar = mostFrequentlyOccurringChar(in: str)
    var frequencyDict = [Character:Int]()
    for a in str {
        if let freq = frequencyDict[a] {
            frequencyDict[a] = freq + 1
        } else {
            frequencyDict[a] = 1
        }
    }
    var secondHighestCount = 0
    var answer = Character(" ")
    for (char,freq) in frequencyDict {
        if char == mostFreqChar {
            continue
        }
        if secondHighestCount < freq {
            answer = char
            secondHighestCount = freq
        }
        
    }
    
    return answer
}

// https://leetcode.com/problems/ransom-note/

// Given an arbitrary ransom note string and another string containing letters from all
// the magazines, write a function that will return true if the ransom note can be
// constructed from the magazines ; otherwise, it will return false.

// Each letter in the magazine string can only be used once in your ransom note.

// Submit to the leetcode link for more tests

func canConstruct(note: String, from originalLetters: String) -> Bool {
    return false
}


// Return whether or not an input array contains duplicates

func containsDuplicates(arr: [Int]) -> Bool {
    return false
}

// Find all values that appear exactly once in a given array of Strings

func uniqueValues(in arr: [String]) -> [String] {
    return []
}

// Sort a given array by how often each term appears

func sortByFrequency(arr: [Int]) -> [Int] {
    return []
}

