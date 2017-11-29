//
//  Pair.swift
//  MoneyExample
//
//  Created by Yoshiyuki Kawashima on 2017/11/29.
//  Copyright © 2017 ykws. All rights reserved.
//

struct Pair {
  let from: String
  let to: String

  init(from: String, to: String) {
    self.from = from
    self.to = to
  }

}

extension Pair: Hashable {
  var hashValue: Int {
    return from.hashValue ^ to.hashValue &* 16777619
  }

  static func == (lhs: Pair, rhs: Pair) -> Bool {
    return lhs.from == rhs.from && lhs.to == rhs.to
  }
}
