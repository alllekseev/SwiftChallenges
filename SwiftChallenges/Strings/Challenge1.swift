//
//  Challenge1.swift
//  SwiftChallenges
//
//  Created by Олег Алексеев on 04/06/2024.
//

import Foundation

extension StringChallenges {

  /// - Name: Are the letters unique?
  /// - Difficulty: Easy
  /// - Estimated Time: 10 minutes
  /// - Spending Time: 7 minutes

  func challenge1(input: String) -> Bool {
    Set(input).count == input.count
    //  var dict = [Character: Int]()
    //
    //  for char in input {
    //    if dict[char] != nil {
    //      return false
    //    }
    //    dict[char] = 1
    //  }
    //  return true
  }

  func testChallenge1() {
    assert(challenge1(input: "No duplicates") == true, "Challenge 1 failed")
    assert(challenge1(input: "abcdefghijklmnopqrstuvwxyz") == true, "Challenge 1 failed")
    assert(challenge1(input: "AaBbCc") == true, "Challenge 1 failed")
    assert(challenge1(input: "Hello, world") == false, "Challenge 1 failed")
  }
}
