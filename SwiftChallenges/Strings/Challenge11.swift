//
//  Challenge11.swift
//  SwiftChallenges
//
//  Created by Олег Алексеев on 05/06/2024.
//

import Foundation

extension StringChallenges {
  /// - Name: Three different letters
  /// - Description: Write a function that accepts two strings, 
  ///   and returns true if they are identical
  ///   lenght but have no more than three different letters,
  ///   taking case and string order into account.
  /// - Difficulty: Tricky
  /// - Estimated Time: 20 minutes
  /// - Spending Time: 10 minutes
  /// - Note: Convert the string into an array to make it easier to work with indexes.

  func challenge11(string1: String, string2: String) -> Bool {

    guard string1.count == string2.count else { return false }

    let arr1 = Array(string1)
    let arr2 = Array(string2)

    var differenceCount = 0

    for (index, char) in arr1.enumerated() {
      if arr2[index] != char {
        differenceCount += 1
      }
      if differenceCount > 3 { return false }
    }

    return true
  }

  func testChallenge11() {
    assert(challenge11(string1: "Clamp", string2: "Cramp") == true, "Challenge 11 failed")
    assert(challenge11(string1: "Clamp", string2: "Crams") == true, "Challenge 11 failed")
    assert(challenge11(string1: "Clamp", string2: "Grams") == true, "Challenge 11 failed")
    assert(challenge11(string1: "Clamp", string2: "Grans") == false, "Challenge 11 failed")
    assert(challenge11(string1: "Clamp", string2: "Clam") == false, "Challenge 11 failed")
    assert(challenge11(string1: "clamp", string2: "maple") == false, "Challenge 11 failed")
  }
}
