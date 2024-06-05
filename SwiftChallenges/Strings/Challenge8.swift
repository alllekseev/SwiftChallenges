//
//  Challenge8.swift
//  SwiftChallenges
//
//  Created by Олег Алексеев on 05/06/2024.
//

import Foundation

extension StringChallenges {
  /// - Name: String is rotated
  /// - Description: Write a function that accepts two strings,
  /// and returns true if one string is rotation the other,
  /// taking letter case into account.
  /// - Difficulty: Tricky
  /// - Estimated Time: 30 minutes
  /// - Spending Time: 26 minutes
  /// - Note: You need to **double the string** being checked.
  /// Then, it will definitely contain a **rotated** version of the original string.
  /// - Important: It's important to ensure that both strings are the same length.

  func challenge8(input: String, rotated: String) -> Bool {
    
    guard input.count == rotated.count else { return false }

    var doubledString = input+input

    return doubledString.contains(rotated)
  }

  func testChallenge8() {
    assert(challenge8(input: "abcde", rotated: "eabcd") == true, "Challenge 8 failed")
    assert(challenge8(input: "abcde", rotated: "cdeab") == true, "Challenge 8 failed")
    assert(challenge8(input: "abcde", rotated: "abced") == false, "Challenge 8 failed")
    assert(challenge8(input: "abc", rotated: "a") == false, "Challenge 8 failed")
  }
}
