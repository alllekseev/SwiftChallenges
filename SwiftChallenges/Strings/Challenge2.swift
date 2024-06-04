//
//  Challenge2.swift
//  SwiftChallenges
//
//  Created by Олег Алексеев on 04/06/2024.
//

import Foundation

extension StringChallenges {
  /// - Name: Is a string a palindrome?
  /// - Difficulty: Easy
  /// - Estimated Time: 15 minutes
  /// - Spending Time: 12 minutes
  /// - Note: Solved this with two pointers method

  func challenge2(input: String) -> Bool {

    let lowercased = input.lowercased()
    return String(lowercased.reversed()) == lowercased

  //  var l = 0, r = input.count - 1
  //  while l < r {
  //    if input[l].lowercased() != input[r].lowercased() {
  //      return false
  //    }
  //    l += 1
  //    r -= 1
  //  }
  //  return true
  }

  func testChallenge2() {
    assert(challenge2(input: "rotator") == true, "Challenge 2 failed")
    assert(challenge2(input: "Rats live on no evil star") == true, "Challenge 2 failed")
    assert(challenge2(input: "Never odd or even") == false, "Challenge 2 failed")
    assert(challenge2(input: "Hello, world") == false, "Challenge 2 failed")
  }
}

fileprivate extension String {
  subscript(offset: Int) -> Character {
    self[index(startIndex, offsetBy: offset)]
  }
}
