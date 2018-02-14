//
//  MyHelperTest.swift
//  CoolAppTests
//
//  Created by Mei Yu on 2/13/18.
//  Copyright © 2018 Say Say K. All rights reserved.
//

import XCTest
@testable import CoolApp

class MyHelperTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testMyText() {
        let expectedText = "hello"
        XCTAssertEqual(expectedText, MyHelper().myText())
    }

    func testMagicText() {
        let expectedText = "This is MAGIC..."
        XCTAssertEqual(expectedText, MyHelper.magicText())
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
