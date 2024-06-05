//
//  Challenge10.swift
//  SwiftChallenges
//
//  Created by Олег Алексеев on 05/06/2024.
//

import Foundation

extension StringChallenges {
  /// - Name: Vowels and consonants
  /// - Description: Given a string in English, return a tuple containing
  ///   the number of vowels and consonants.
  /// - Difficulty: Tricky
  /// - Estimated Time: 30 minutes
  /// - Spending Time: 10 minutes
  /// - Note: Solution 2 is more suitable and simpler.

  func challenge10(input: String) -> (vowels: Int, consonants: Int) {

    // MARK: - Solution 1

//    let vowels = CharacterSet(charactersIn: "aeiou")
//    let consonants = CharacterSet(charactersIn: "bcdfghjklmnpqrstvwxyz")
//
//    var vowelCount = 0
//    var consonantCount = 0
//
//    for letter in input.lowercased() {
//      let stringLetter = String(letter)
//
//      if stringLetter.rangeOfCharacter(from: vowels) != nil {
//        vowelCount += 1
//      } else if stringLetter.rangeOfCharacter(from: consonants) != nil {
//        consonantCount += 1
//      }
//    }
//
//    return (vowelCount, consonantCount)

    // MARK: - Solution 2

    let vowels = "aeiou"
    let consonants = "bcdfghjklmnpqrstvwxyz"
    var vowelCount = 0
    var consonantCount = 0

    for letter in input.lowercased() {
      if vowels.contains(letter) {
        vowelCount += 1
      } else if consonants.contains(letter) {
        consonantCount += 1
      }
    }

    return (vowelCount, consonantCount)

    // MARK: - Solution 3

//    var dict = ["vowels": 0, "consonants": 0]
//
//    for char in input.uppercased() {
//      switch char {
//      case "A", "E", "I", "O", "U": dict["vowels"]! += 1
//      case "B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Y", "Z":
//        dict["consonants"]! += 1
//      default: continue
//      }
//    }
//
//    return (dict["vowels"]!, dict["consonants"]!)
  }

  func testChallenge10() {
    assert(challenge10(input: "Swift Coding Challenges") == (vowels: 6, consonants: 15), "Challenge 10 failed")
    assert(challenge10(input: "Mississippi") == (vowels: 4, consonants: 7), "Challenge 10 failed")
  }
}
