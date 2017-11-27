//
//  Bank.swift
//  MoneyExample
//
//  Created by Yoshiyuki Kawashima on 2017/11/24.
//  Copyright © 2017 ykws. All rights reserved.
//

class Bank {

  func reduce(source: Expression, to: String) -> Money {
    let sum: Sum = source as! Sum
    let amount: Int = sum.augend.amount + sum.addend.amount
    return Money.init(amount: amount, currency: to)
  }

}
