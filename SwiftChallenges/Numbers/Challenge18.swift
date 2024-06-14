//
//  Challenge18.swift
//  SwiftChallenges
//
//  Created by Олег Алексеев on 14/06/2024.
//

import Foundation
extension NumberChallenges {
  /// - Name: Recreate the pow() function
  /// - Description: Create a function that accepts positive two integers, and raises the first to the power of the second.
  /// - Difficulty: Easy
  /// - Estimated Time: 10 minutes
  /// - Spending Time: 2 minutes

  func challenge18(num: Int, pow: Int) -> Int {

    guard num > 0, pow > 0 else { return 0 }

    // MARK: - Solution 1

//    var res = num
//
//    for _ in 1..<pow {
//      res *= num
//    }
//
//    return res

    // MARK: - Solution 2

    if pow == 1 { return num }

    return num * challenge18(num: num, pow: pow - 1)
  }

  func testChallenge18() {
    assert(challenge18(num: 4, pow: 3) == 64, "Challenge 18 failed")
    assert(challenge18(num: 2, pow: 8) == 256, "Challenge 18 failed")
  }
}
