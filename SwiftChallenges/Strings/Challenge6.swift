//
//  Challenge6.swift
//  SwiftChallenges
//
//  Created by Олег Алексеев on 04/06/2024.
//

import Foundation

extension StringChallenges {
  /// - Name: Remove duplicate letters from a string
  /// - Description: accepts a string as its input, and returns the same string just with duplicate letters removed
  /// - Difficulty: Easy
  /// - Estimated Time: 15 minutes
  /// - Spending Time: 10 minutes
  /// - Note: solve this challenge with dictionary and `updateValue(_:forKey:)`

  func challenge6(input: String) -> String {

    // MARK: - Solution 1

//    let arr: [Character] = Array(input)
//    let set = NSOrderedSet(array: arr).map { $0 as! Character }
//    let str = String(set)
//    print(str)
//    return str

    // MARK: - Solution 2

//    var used = [Character]()
//
//    for char in input {
//      if !used.contains(char) {
//        used.append(char)
//      }
//    }
//
//    return String(used)

    // MARK: - Solution 3

    var used = [Character: Bool]()

    let result = input.filter {
      used.updateValue(true, forKey: $0) == nil
    }

    return String(result)

    // MARK: - Solution 4

//    String(input.uniqued())
  }

  func testChallenge6() {
    assert(challenge6(input: "wombat") == "wombat", "Challenge 6 failed")
    assert(challenge6(input: "hello") == "helo", "Challenge 6 failed")
    assert(challenge6(input: "Mississippi") == "Misp", "Challenge 6 failed")
  }
}

fileprivate extension Sequence where Element: Hashable {
  func uniqued() -> [Element] {
    var set = Set<Element>()
    return filter { set.insert($0).inserted }
  }
}

