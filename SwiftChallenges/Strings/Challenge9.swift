//
//  Challenge9.swift
//  SwiftChallenges
//
//  Created by Олег Алексеев on 05/06/2024.
//

import Foundation

extension StringChallenges {
  /// - Name: Find pangrams
  /// - Description: Write a function that returns true if it is given
  ///   a string that is an English pangram, ignoring letter case.
  /// - Difficulty: Tricky
  /// - Estimated Time: 30 minutes
  /// - Spending Time: 7 minutes
  /// - Note: Swift’s characters conform to Comparable,
  ///   so you can compare them against “a” and “z” directly
  ///   to ensure they are alphabetical.

  func challenge9(input: String) -> Bool {
    let set = Set(input.lowercased())
    let letters = set.filter { $0 >= "a" && $0 <= "z" }
    return letters.count == 26
  }

  func testChallenge9() {
    assert(challenge9(input: "The quick brown fox jumps over the lazy dog") == true, "Challenge 9 failed")
    assert(challenge9(input: "The quick brown fox jumped over the lazy dog") == false, "Challenge 9 failed")
  }
}
