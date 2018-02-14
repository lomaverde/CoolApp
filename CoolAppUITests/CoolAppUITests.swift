//
//  CoolAppUITests.swift
//  CoolAppUITests
//
//  Created by Mei Yu on 2/13/18.
//  Copyright © 2018 Say Say K. All rights reserved.
//

import XCTest

class CoolAppUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testFirstTab() {

        let app = XCUIApplication()
        let tabBarsQuery = app.tabBars
        tabBarsQuery.buttons["Second"].tap()
        tabBarsQuery.buttons["First"].tap()
        app.staticTexts["First View"].tap()

    }

    func testSecondTab() {
        let app = XCUIApplication()
        let tabBarsQuery = app.tabBars
        tabBarsQuery.buttons["First"].tap()
        tabBarsQuery.buttons["Second"].tap()
        app.staticTexts["Second View"].tap()



    }
    
}
