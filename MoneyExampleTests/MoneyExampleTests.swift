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
    var product: Dollar = five.times(2)
    XCTAssertEqual(10, product.amount, "")
    product = five.times(3)
    XCTAssertEqual(15, product.amount, "")
  }
  
  func testEquality() {
    XCTAssertTrue(Dollar.init(amount: 5) == Dollar.init(amount: 5))
  }

}
