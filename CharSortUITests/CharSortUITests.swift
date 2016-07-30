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
        continueAfterFailure = false
        XCUIApplication().launch()
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
