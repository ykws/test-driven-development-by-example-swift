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
    XCTAssertEqual(Money.dollar(10), five.times(2) as! Money)
    XCTAssertEqual(Money.dollar(15), five.times(3) as! Money)
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
    XCTAssertEqual(five, sum.augend as! Money)
    XCTAssertEqual(five, sum.addend as! Money)
  }

  func testReduceSum() {
    let sum: Expression = Sum.init(Money.dollar(3), Money.dollar(4))
    let bank: Bank = Bank.init()
    let result: Money = bank.reduce(source: sum, to: "USD")
    XCTAssertEqual(Money.dollar(7), result)
  }

  func testReduceMoney() {
    let bank: Bank = Bank.init()
    let result: Money = bank.reduce(source: Money.dollar(1), to: "USD")
    XCTAssertEqual(Money.dollar(1), result)
  }

  func testReduceMoneyDifferentCurrency() {
    let bank: Bank = Bank.init()
    bank.addRate(from: "CHF", to: "USD", rate: 2)
    let result: Money = bank.reduce(source: Money.franc(2), to: "USD")
    XCTAssertEqual(Money.dollar(1), result)
  }

  func testIdentityRate() {
    XCTAssertEqual(1, Bank.init().rate(from: "USD", to: "USD"))
  }

  func testMixedAddition() {
    let fiveBucks: Money = Money.dollar(5)
    let tenFrancs: Money = Money.franc(10)
    let bank: Bank = Bank.init()
    bank.addRate(from: "CHF", to: "USD", rate: 2)
    let result: Money = bank.reduce(source: fiveBucks.plus(tenFrancs), to: "USD")
    XCTAssertEqual(Money.dollar(10), result)
  }

  func testSumPlusMoney() {
    let fiveBucks: Expression = Money.dollar(5)
    let tenFrancs: Expression = Money.franc(10)
    let bank: Bank = Bank.init()
    bank.addRate(from: "CHF", to: "USD", rate: 2)
    let sum: Expression = Sum.init(fiveBucks, tenFrancs).plus(fiveBucks)
    let result: Money = bank.reduce(source: sum, to: "USD")
    XCTAssertEqual(Money.dollar(15), result)
  }

  func testSumTimes() {
    let fiveBucks: Expression = Money.dollar(5)
    let tenFrancs: Expression = Money.franc(10)
    let bank: Bank = Bank.init()
    bank.addRate(from: "CHF", to: "USD", rate: 2)
    let sum: Expression = Sum.init(fiveBucks, tenFrancs).times(2)
    let result: Money = bank.reduce(source: sum, to: "USD")
    XCTAssertEqual(Money.dollar(20), result)
  }

}
