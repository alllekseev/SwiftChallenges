//
//  Challenge12.swift
//  SwiftChallenges
//
//  Created by Олег Алексеев on 06/06/2024.
//

import Foundation

extension StringChallenges {
  /// - Name: Find longest prefix
  /// - Description: Write a function that accepts a string of words
  ///   with a similar prefix, separated by spaces, and returns the longest
  ///   substring that prefixes all words.
  /// - Difficulty: Tricky
  /// - Estimated Time: 30 minutes
  /// - Spending Time: 15 minutes
  /// - Note: Note: `split` removes all symbols from a string, whereas
  ///   `components(separatedBy:)` only removes ones between words.

  func challenge12(input: String) -> String {

    // MARK: Solution 1 (My)

    guard !input.isEmpty else { return "" }

    var words = input.trimmingPrefix(" ").split(separator: " ").map { String($0) }
    guard words.count > 1 else { return words[0] }

    var currentPrefix = words.remove(at: 0)
    var bestPrefix = currentPrefix

    for word in words {
      var currentPrefixMaxLength = currentPrefix.count

      if !word.hasPrefix(bestPrefix) {
        while currentPrefixMaxLength >= 0 {
          if word.hasPrefix(currentPrefix) {
            bestPrefix = currentPrefix
            break
          }
          currentPrefixMaxLength -= 1
          currentPrefix = String(currentPrefix.prefix(currentPrefixMaxLength))
        }
      }
    }

    return bestPrefix

    // Solution 2

//    let parts = input.components(separatedBy: " ")
//    guard let first = parts.first else { return "" }
//    var currentPrefix = ""
//    var bestPrefix = ""
//    for letter in first {
//      currentPrefix.append(letter)
//      for word in parts {
//        if !word.hasPrefix(currentPrefix) {
//          return bestPrefix
//        }
//      }
//      bestPrefix = currentPrefix
//    }
//    return bestPrefix

  }

  func testChallenge12() {
//    assert(challenge12(input: "swift switch swill swim") == "swi", "Challenge 12 failed")
//    assert(challenge12(input: "flip flap flop") == "fl", "Challenge 12 failed")
//    assert(challenge12(input: "flip") == "flip", "Challenge 12 failed")
    assert(challenge12(input: " a ") == "a", "Challenge 12 failed")
  }
}
