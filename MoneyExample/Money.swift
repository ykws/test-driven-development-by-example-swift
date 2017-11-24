//
//  Money.swift
//  MoneyExample
//
//  Created by Yoshiyuki Kawashima on 2017/11/24.
//  Copyright © 2017 ykws. All rights reserved.
//

class Money: Equatable {
  let amount: Int
  let currency: String

  init(amount: Int, currency: String) {
    self.amount = amount
    self.currency = currency
  }

  static func == (lhs: Money, rhs: Money) -> Bool {
    return lhs.amount == rhs.amount && lhs.currency == rhs.currency
  }

  func times(_ multiplier: Int) -> Money {
    return Money.init(amount: amount * multiplier, currency: currency)
  }

  static func dollar(amount: Int) -> Money {
    return Money.init(amount: amount, currency: "USD")
  }

  static func franc(amount: Int) -> Money {
    return Money.init(amount: amount, currency: "CHF")
  }

}
