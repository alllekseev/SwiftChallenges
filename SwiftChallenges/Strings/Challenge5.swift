//
//  Challenge5.swift
//  SwiftChallenges
//
//  Created by Олег Алексеев on 04/06/2024.
//

import Foundation

extension StringChallenges {
  /// - Name: Count the characters
  /// - Difficulty: Easy
  /// - Estimated Time: 15 minutes
  /// - Spending Time: 10 minutes
  /// - Note: in `reduce` $0 always Int for counting, and $1 is current element in array
  /// - Important: `reduce` about **10% slower** than the `for in` loop.
  /// `NSCountedSet` approach **a massive ten times slower** than the original

  func challenge5(input: String, count: Character) -> Int {

    // MARK: - Solution 1

    var letterCount = 0
    for letter in input {
      if letter == count {
        letterCount += 1
      }
    }
    return letterCount

    // MARK: - Solution 2

//    input.reduce(0) { $1 == count ? $0 + 1 : $0 }

    // MARK: - Solution 3

//    let array  = input.map { String($0) }
//    let counted = NSCountedSet(array: array)
//
//    return counted.count(for: count)

    // MARK: - Solution 4

//    let modified = input.replacingOccurrences(of: count, with: "")
//    return input.count - modified.count
  }

  func testChallenge5() {
    assert(challenge5(input: "The rain in Spain", count: "a") == 2, "Challenge 5 failed")
    assert(challenge5(input: "Mississippi", count: "i") == 4, "Challenge 5 failed")
    assert(challenge5(input: "Hacking with Swift", count: "i") == 3, "Challenge 5 failed")
  }
}
