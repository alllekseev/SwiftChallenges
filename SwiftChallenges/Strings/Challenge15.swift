//
//  Challenge15.swift
//  SwiftChallenges
//
//  Created by Олег Алексеев on 12/06/2024.
//

import Foundation

extension StringChallenges {
  /// - Name: Reverse the words in a string
  /// - Description: Write a function that returns a string with each of its words reversed but in the original order, without using a loop.
  /// - Difficulty: Taxing
  /// - Estimated Time: 30 minutes
  /// - Spending Time: 10 minutes

  func challenge15(input: String) -> String {

    var newStr = input.components(separatedBy: " ").map { String($0.reversed()) }.joined(separator: " ")



    return newStr
  }

  func testChallenge15() {
    assert(challenge15(input: "Swift Coding Challenges") == "tfiwS gnidoC segnellahC", "Challenge 15 failed")
    assert(challenge15(input: "The quick brown fox") == "ehT kciuq nworb xof", "Challenge 15 failed")
  }
}
