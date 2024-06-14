//
//  Challenge17.swift
//  SwiftChallenges
//
//  Created by Олег Алексеев on 13/06/2024.
//

import Foundation

extension NumberChallenges {
  /// - Name: Generate a random number in a range
  /// - Description: Write a function that accepts positive minimum and maximum
  ///  integers, and returns a random number between those two bounds, inclusive.
  /// - Difficulty: Easy
  /// - Estimated Time: 10 minutes
  /// - Spending Time: 2 minutes

  func challenge17(min: Int, max: Int) -> Int {
    return Int.random(in: min...max)
  }

  func testChallenge17() {
    assert(challenge17(min: 1, max: 5) == 1
           || challenge17(min: 1, max: 5) == 2
           || challenge17(min: 1, max: 5) == 3
           || challenge17(min: 1, max: 5) == 4
           || challenge17(min: 1, max: 5) == 5, "Challenge 17 failed")
    assert(challenge17(min: 8, max: 10) == 8
           || challenge17(min: 8, max: 10) == 9
           || challenge17(min: 8, max: 10) == 10, "Challenge 17 failed")
    assert(challenge17(min: 12, max: 12) == 12, "Challenge 17 failed")
    assert(challenge17(min: 12, max: 18) != 7, "Challenge 17 failed")
  }
}
