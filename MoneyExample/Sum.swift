//
//  Sum.swift
//  MoneyExample
//
//  Created by Yoshiyuki Kawashima on 2017/11/24.
//  Copyright © 2017 ykws. All rights reserved.
//

struct Sum {
  let augend: Expression
  let addend: Expression

  init(_ augend: Expression, _ addend: Expression) {
    self.augend = augend
    self.addend = addend
  }

}

extension Sum: Expression {

  func times(_ multiplier: Int) -> Expression {
    return Sum.init(augend.times(multiplier),
                    addend.times(multiplier))
  }

  func plus(_ addend: Expression) -> Expression{
    return Sum.init(self, addend)
  }

  func reduce(bank: Bank, to: String) -> Money {
    let amount: Int = augend.reduce(bank: bank, to: to).amount
                    + addend.reduce(bank: bank, to: to).amount
    return Money.init(amount: amount, currency: to)
  }

}
