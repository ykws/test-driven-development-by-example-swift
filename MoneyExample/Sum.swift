//
//  Sum.swift
//  MoneyExample
//
//  Created by Yoshiyuki Kawashima on 2017/11/24.
//  Copyright © 2017 ykws. All rights reserved.
//

struct Sum: Expression {
  let augend: Money
  let addend: Money

  init(augend: Money, addend: Money) {
    self.augend = augend
    self.addend = addend
  }

}
