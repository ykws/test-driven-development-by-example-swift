//
//  Dollar.swift
//  MoneyExample
//
//  Created by Yoshiyuki Kawashima on 2017/11/22.
//  Copyright © 2017 ykws. All rights reserved.
//

class Dollar: Equatable {
  var amount: Int
  
  init(amount: Int) {
    self.amount = amount
  }
  
  func times(_ multiplier: Int) -> Dollar {
    return Dollar.init(amount: self.amount * multiplier)
  }
  
  static func == (lhs: Dollar, rhs: Dollar) -> Bool {
    return true
  }
}
