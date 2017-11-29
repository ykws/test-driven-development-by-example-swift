//
//  Bank.swift
//  MoneyExample
//
//  Created by Yoshiyuki Kawashima on 2017/11/24.
//  Copyright © 2017 ykws. All rights reserved.
//

class Bank {

  func reduce(source: Expression, to: String) -> Money {
    return source.reduce(to)
  }

  func addRate(from: String, to: String, rate: Int) {
  }

}
