//
//  Challenge3.swift
//  SwiftChallenges
//
//  Created by Олег Алексеев on 04/06/2024.
//

import Foundation

extension StringChallenges {
  /// - Name: Do two strings contain the same characters?
  /// - Difficulty: Easy
  /// - Estimated Time: 10 minutes
  /// - Spending Time: 19 minutes
  /// - Note: solve this with sort

  func challenge3(string1: String, string2: String) -> Bool {

    // MARK: - Solution 1

//    guard string1.count == string2.count else { return false }
//
//    var string2 = string2
//
//    for char in string1 {
//      if let removedIndex = string2.firstIndex(of: char) {
//        string2.remove(at: removedIndex)
//      } else {
//        return false
//      }
//    }
//
//    return true

    // MARK: - Solution 2

    guard string1.count == string2.count else { return false }
    return string1.sorted() == string2.sorted()
  }

  func testChallenge3() {
    assert(challenge3(string1: "abca", string2: "abca") == true, "Challenge 3 failed")
    assert(challenge3(string1: "abc", string2: "cba") == true, "Challenge 3 failed")
    assert(challenge3(string1: "a1 b2", string2: "b1 a2") == true, "Challenge 3 failed")
    assert(challenge3(string1: "abc", string2: "abca") == false, "Challenge 3 failed")
    assert(challenge3(string1: "abc", string2: "Abc") == false, "Challenge 3 failed")
    assert(challenge3(string1: "abc", string2: "cbAa") == false, "Challenge 3 failed")
    assert(challenge3(string1: "abcc", string2: "abca") == false, "Challenge 3 failed")
  }
}
