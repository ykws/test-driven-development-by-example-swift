//
//  Money.swift
//  MoneyExample
//
//  Created by Yoshiyuki Kawashima on 2017/11/24.
//  Copyright © 2017 ykws. All rights reserved.
//

class Money: Equatable, Expression {
  let amount: Int
  let currency: String

  init(amount: Int, currency: String) {
    self.amount = amount
    self.currency = currency
  }

  func times(_ multiplier: Int) -> Money {
    return Money.init(amount: amount * multiplier, currency: currency)
  }

  func plus(_ addend: Money) -> Expression {
    return Sum.init(self, addend)
  }

  // MARK: - Equatable

  static func == (lhs: Money, rhs: Money) -> Bool {
    return lhs.amount == rhs.amount && lhs.currency == rhs.currency
  }

  // MARK: - Expression

  func reduce(_ to: String) -> Money {
    return self
  }

  // MARK: - Factory Method

  static func dollar(_ amount: Int) -> Money {
    return Money.init(amount: amount, currency: "USD")
  }

  static func franc(_ amount: Int) -> Money {
    return Money.init(amount: amount, currency: "CHF")
  }

}
