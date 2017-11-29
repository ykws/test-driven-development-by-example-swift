//
//  Bank.swift
//  MoneyExample
//
//  Created by Yoshiyuki Kawashima on 2017/11/24.
//  Copyright © 2017 ykws. All rights reserved.
//

class Bank {

  func reduce(source: Expression, to: String) -> Money {
    return source.reduce(bank: self, to: to)
  }

  func addRate(from: String, to: String, rate: Int) {
  }

  func rate(from: String, to: String) -> Int {
    return (from == "CHF" && to == "USD") ? 2 : 1
  }

}
