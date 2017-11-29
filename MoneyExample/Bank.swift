//
//  Bank.swift
//  MoneyExample
//
//  Created by Yoshiyuki Kawashima on 2017/11/24.
//  Copyright © 2017 ykws. All rights reserved.
//

class Bank {
  var rates: Dictionary = [Pair: Int]()

  func reduce(source: Expression, to: String) -> Money {
    return source.reduce(bank: self, to: to)
  }

  func addRate(from: String, to: String, rate: Int) {
    rates[Pair.init(from: from, to: to)] = rate
  }

  func rate(from: String, to: String) -> Int {
    if from == to {
      return 1
    }

    return rates[Pair.init(from: from, to: to)]!
  }

}
