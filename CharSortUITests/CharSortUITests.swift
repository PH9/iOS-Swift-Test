//
//  CharSortUITests.swift
//  CharSortUITests
//
//  Created by Wasith Theerapattrathamrong on 7/30/2559 BE.
//  Copyright © 2559 Wasith Theerapattrathamrong. All rights reserved.
//

import XCTest

class CharSortUITests: XCTestCase {

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

    func test_displaySortedChar_WhenLickedSort() {
        let app = XCUIApplication()

        app.textFields["inputTextField"].tap()
        app.textFields["inputTextField"].typeText("Dog")

        app.buttons["submitButton"].tap()

        XCTAssertEqual("dgo", app.staticTexts["outputLabel"].label)
    }

    func test_displayEmpty_whenEnterEmpty() {
        let app = XCUIApplication()

        app.textFields["inputTextField"].tap()
        app.textFields["inputTextField"].typeText("Dog")

        app.buttons["submitButton"].tap()

        XCTAssertEqual("dgo", app.staticTexts["outputLabel"].label)

        app.textFields["inputTextField"].tap()
        let deleteKey = XCUIApplication().keys["delete"]
        deleteKey.tap()
        deleteKey.tap()
        deleteKey.tap()

        app.buttons["submitButton"].tap()

        XCTAssertEqual("", app.staticTexts["outputLabel"].label)
    }

}
