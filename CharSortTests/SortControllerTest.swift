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

    func test_setUpResult_shouldHaveBeenCalled_afterClickedSubmitButton() {
        let thisViewController = ThisViewController()
        let sortController = SortController(controller: thisViewController)
        sortController.sort("zfa")

        XCTAssertTrue(thisViewController.isCall)
    }
}

class ThisViewController: SortControllerProtocol {
    var isCall = false

    func displayResult(result: String) {
        self.isCall = true
    }
}
