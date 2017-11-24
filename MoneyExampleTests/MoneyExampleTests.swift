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
    let five: Money = Money.dollar(5)
    XCTAssertEqual(Money.dollar(10), five.times(2))
    XCTAssertEqual(Money.dollar(15), five.times(3))
  }

  func testEquality() {
    XCTAssertTrue(Money.dollar(5) == Money.dollar(5))
    XCTAssertFalse(Money.dollar(5) == Money.dollar(6))
    XCTAssertFalse(Money.franc(5) == Money.dollar(5))
  }

  func testCurrency() {
    XCTAssertEqual("USD", Money.dollar(1).currency);
    XCTAssertEqual("CHF", Money.franc(1).currency);
  }

  func testSimpleAddition() {
    let five: Money = Money.dollar(5)
    let sum: Expression = five.plus(five)
    let bank: Bank = Bank.init()
    let reduced: Money = bank.reduce(source: sum, to: "USD")
    XCTAssertEqual(Money.dollar(10), reduced)
  }

  func testPlusReturnsSum() {
    let five: Money = Money.dollar(5)
    let result: Expression = five.plus(five)
    let sum: Sum = result as! Sum
    XCTAssertEqual(five, sum.augend)
    XCTAssertEqual(five, sum.addend)
  }
}
