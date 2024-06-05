//
//  Challenge7.swift
//  SwiftChallenges
//
//  Created by Олег Алексеев on 05/06/2024.
//

import Foundation

extension StringChallenges{
  /// - Name: Condense whitespace
  /// - Description: Write a function that returns a string with any consecutive spaces replaced with a single space.
  /// - Difficulty: Easy
  /// - Estimated Time: 15 minutes
  /// - Spending Time: 40 minutes
  /// - Note: For similar tasks, first, consider the possibility of using a regular expression-based solution.
  /// - Important: RegEx can be expensive in performace

  func challenge7(string: String) -> String {


    // MARK: - Solution 1

//    guard string.contains(" ") else {
//      return string
//    }
//
//    var result = ""
//    var seenSpace = false
//
//    for char in string {
//      if char == " " {
//        if seenSpace { continue }
//        seenSpace = true
//      } else {
//        seenSpace = false
//      }
//      result.append(char)
//    }
//
//    return result

    // MARK: - Solution 2

    return string.replacingOccurrences(of: " +", with: " ", options: .regularExpression)
  }

  func testChallenge7() {
    assert(challenge7(string: "a   b   c") == "a b c", "Challenge 7 failed")
    assert(challenge7(string: "    a") == " a", "Challenge 7 failed")
    assert(challenge7(string: "abc") == "abc", "Challenge 7 failed")
  }
}
