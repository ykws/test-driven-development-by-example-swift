//
//  Expression.swift
//  MoneyExample
//
//  Created by Yoshiyuki Kawashima on 2017/11/24.
//  Copyright © 2017 ykws. All rights reserved.
//

protocol Expression {
  func plus(_ addend: Expression) -> Expression
  func reduce(bank: Bank, to: String) -> Money
}
