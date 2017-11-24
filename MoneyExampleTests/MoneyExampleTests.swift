//
//  MoneyExampleTests.swift
//  MoneyExampleTests
//
//  Created by Yoshiyuki Kawashima on 2017/11/22.
//  Copyright © 2017 ykws. All rights reserved.
//

import XCTest
@testable import MoneyExample

class MoneyExampleTests: XCTestCase {

  override func setUp() {
    super.setUp()
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }

  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }

  func testMultiplication() {
    let five: Money = Money.dollar(amount: 5)
    XCTAssertEqual(Money.dollar(amount: 10), five.times(2))
    XCTAssertEqual(Money.dollar(amount: 15), five.times(3))
  }

  func testEquality() {
    XCTAssertTrue(Money.dollar(amount: 5) == Money.dollar(amount: 5))
    XCTAssertFalse(Money.dollar(amount: 5) == Money.dollar(amount: 6))
    XCTAssertFalse(Money.franc(amount: 5) == Money.dollar(amount: 5))
  }

  func testCurrency() {
    XCTAssertEqual("USD", Money.dollar(amount: 1).currency);
    XCTAssertEqual("CHF", Money.franc(amount: 1).currency);
  }

  func testSimpleAddition() {
    let sum: Money = Money.dollar(amount: 5).plus(Money.dollar(amount: 5))
    XCTAssertEqual(Money.dollar(amount: 10), sum)
  }
}
