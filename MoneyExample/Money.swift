//
//  Money.swift
//  MoneyExample
//
//  Created by Yoshiyuki Kawashima on 2017/11/24.
//  Copyright © 2017 ykws. All rights reserved.
//

class Money: Equatable {
  let amount: Int

  init(amount: Int) {
    self.amount = amount
  }

  static func == (lhs: Money, rhs: Money) -> Bool {
    return lhs.amount == rhs.amount && type(of: lhs) == type(of: rhs)
  }

  func times(_ multiplier: Int) -> Money {
    return Money.init(amount: amount * multiplier)
  }

  static func dollar(amount: Int) -> Dollar {
    return Dollar.init(amount: amount)
  }

  static func franc(amount: Int) -> Franc {
    return Franc.init(amount: amount)
  }

}
