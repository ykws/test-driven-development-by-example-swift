//
//  Dollar.swift
//  MoneyExample
//
//  Created by Yoshiyuki Kawashima on 2017/11/22.
//  Copyright © 2017 ykws. All rights reserved.
//

class Dollar: Money {

  override func times(_ multiplier: Int) -> Money {
    return Money.dollar(amount: amount * multiplier)
  }

}
