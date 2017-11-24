//
//  Franc.swift
//  MoneyExample
//
//  Created by Yoshiyuki Kawashima on 2017/11/24.
//  Copyright © 2017 ykws. All rights reserved.
//

class Franc: Money {

  override func times(_ multiplier: Int) -> Money {
    return Franc.init(amount: amount * multiplier, currency: currency)
  }

}
