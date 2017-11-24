//
//  Franc.swift
//  MoneyExample
//
//  Created by Yoshiyuki Kawashima on 2017/11/24.
//  Copyright © 2017 ykws. All rights reserved.
//

class Franc: Equatable {
  private var amount: Int
  
  init(amount: Int) {
    self.amount = amount
  }
  
  func times(_ multiplier: Int) -> Franc {
    return Franc.init(amount: self.amount * multiplier)
  }
  
  static func == (lhs: Franc, rhs: Franc) -> Bool {
    return lhs.amount == rhs.amount
  }
}
