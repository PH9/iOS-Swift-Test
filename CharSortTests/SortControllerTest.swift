//
//  SortControllerTest.swift
//  CharSort
//
//  Created by Wasith Theerapattrathamrong on 7/30/2559 BE.
//  Copyright © 2559 Wasith Theerapattrathamrong. All rights reserved.
//

import XCTest

@testable import CharSort

class SortControllerTest: XCTestCase {

    var thisViewController: ThisViewController!

    override func setUp() {
        thisViewController = ThisViewController()
    }

    func test_setUpResult_shouldHaveBeenCalled_afterClickedSubmitButton() {
        XCTAssertFalse(thisViewController.isCalledDisplayResult)

        let sortController = SortController(controller: thisViewController)
        sortController.sort("zfa")

        XCTAssertTrue(thisViewController.isCalledDisplayResult)
    }

    func test_setDisplayEmpty_whenHasNoInput() {
        XCTAssertFalse(thisViewController.isCalledDisplayEmpty)

        let sortController = SortController(controller: thisViewController)
        sortController.sort("")

        XCTAssertTrue(thisViewController.isCalledDisplayEmpty)
    }
}

class ThisViewController: SortControllerProtocol {
    var isCalledDisplayResult = false
    var isCalledDisplayEmpty = false

    func displayResult(result: String) {
        self.isCalledDisplayResult = true
    }

    func displayEmpty() {
        self.isCalledDisplayEmpty = true
    }
}
