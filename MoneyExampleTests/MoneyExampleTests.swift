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
    let five: Dollar = Dollar.init(amount: 5)
    XCTAssertEqual(Dollar.init(amount: 10), five.times(2))
    XCTAssertEqual(Dollar.init(amount: 15), five.times(3))
  }

  func testEquality() {
    XCTAssertTrue(Dollar.init(amount: 5) == Dollar.init(amount: 5))
    XCTAssertFalse(Dollar.init(amount: 5) == Dollar.init(amount: 6))
    XCTAssertTrue(Franc.init(amount: 5) == Franc.init(amount: 5))
    XCTAssertFalse(Franc.init(amount: 5) == Franc.init(amount: 6))
    XCTAssertFalse(Franc.init(amount: 5) == Dollar.init(amount: 5))
  }

  func testFrancMultiplication() {
    let five: Franc = Franc.init(amount: 5)
    XCTAssertEqual(Franc.init(amount: 10), five.times(2))
    XCTAssertEqual(Franc.init(amount: 15), five.times(3))
  }

}
