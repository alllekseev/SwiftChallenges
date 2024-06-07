//
//  Challenge4.swift
//  SwiftChallenges
//
//  Created by Олег Алексеев on 04/06/2024.
//

import Foundation

extension StringChallenges {
  func testChallenge4() {
    assert("Hello, world".fuzzyContains("Hello") == true, "Challenge 4 failed")
    assert("Hello, world".fuzzyContains("WORLD") == true, "Challenge 4 failed")
    assert("Hello, world".fuzzyContains("Goodbye") == false, "Challenge 4 failed")
  }
}

fileprivate extension String {
  /// - Name: Does one string contain another?
  /// - Difficulty: Easy
  /// - Estimated Time: 10 minutes
  /// - Spending Time: 5 minutes
  /// - Note: for implementing custom `contains(_:)` method you can use `range(of:)`

  func fuzzyContains(_ string: String) -> Bool {
    range(of: string, options: .caseInsensitive) != nil
  }
}
