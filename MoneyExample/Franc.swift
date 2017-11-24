//
//  Franc.swift
//  MoneyExample
//
//  Created by Yoshiyuki Kawashima on 2017/11/24.
//  Copyright © 2017 ykws. All rights reserved.
//

class Franc: Money {

  func times(_ multiplier: Int) -> Franc {
    return Franc.init(amount: self.amount * multiplier)
  }

}
