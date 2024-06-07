//
//  Challenge13.swift
//  SwiftChallenges
//
//  Created by Олег Алексеев on 07/06/2024.
//

import Foundation

extension StringChallenges {
  /// - Name: Run-length encoding
  /// - Description: Write a function that accepts
  ///   a string as input, then returns how often each
  ///   etter is repeated in a single run, taking case into account.
  /// - Difficulty: Tricky
  /// - Estimated Time: 30 hour
  /// - Spending Time: 17 minutes

  func challenge13(input: String) -> String {

    guard !input.isEmpty else { return "" }
    let arr = Array(input)
    var result = ""
    var counter = 1

    for i in 1..<arr.count {
      if arr[i] == arr[i - 1] {
        counter += 1
      } else {
        result += "\(arr[i-1])\(counter)"
        counter = 1
      }
    }

    result += "\(arr.last!)\(counter)"

    return result
  }

  func testChallenge13() {
    assert(challenge13(input: "aabbcc") == "a2b2c2", "Challenge 13 failed")
    assert(challenge13(input: "aaabaaabaaa") == "a3b1a3b1a3", "Challenge 13 failed")
    assert(challenge13(input: "aaAAaa") == "a2A2a2", "Challenge 13 failed")
  }
}
