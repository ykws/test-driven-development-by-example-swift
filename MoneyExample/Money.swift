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

  // MARK: - Equatable

  static func == (lhs: Money, rhs: Money) -> Bool {
    return lhs.amount == rhs.amount && lhs.currency == rhs.currency
  }

  // MARK: - Factory Method

  static func dollar(_ amount: Int) -> Money {
    return Money.init(amount: amount, currency: "USD")
  }

  static func franc(_ amount: Int) -> Money {
    return Money.init(amount: amount, currency: "CHF")
  }

}

extension Money: Expression {

  func times(_ multiplier: Int) -> Expression {
    return Money.init(amount: amount * multiplier, currency: currency)
  }

  func plus(_ addend: Expression) -> Expression {
    return Sum.init(self, addend)
  }

  func reduce(bank: Bank, to: String) -> Money {
    let rate: Int = bank.rate(from: currency, to: to)
    return Money.init(amount: amount / rate, currency: to)
  }

}
