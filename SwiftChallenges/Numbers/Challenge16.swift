//
//  Challenge16.swift
//  SwiftChallenges
//
//  Created by Олег Алексеев on 13/06/2024.
//

import Foundation

extension NumberChallenges {
  /// - Name: Fizz Buzz
  /// - Description: Write a function that counts from 1 through 100,
  ///   and prints “Fizz” if the counter is evenly divisible by 3,
  ///   “Buzz” if it’s evenly divisible by 5, “Fizz Buzz” if it’s even divisible by
  ///   three and five, or the counter number for all other cases.
  /// - Difficulty: Easy
  /// - Estimated Time: 10 minutes
  /// - Spending Time: 7 minutes

  func challenge16() {

    for i in 1...100 {
      if i % 3 == 0 {
        if i % 5 == 0 {
          print("Fizz Buzz")
        } else {
          print("Fizz")
        }
      } else if i % 5 == 0 {
        print("Buzz")
      } else {
        print("\(i)")
      }
    }
  }

  func testChallenge16() {
//    challenge16()
  }
}
