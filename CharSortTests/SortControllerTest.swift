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
        let sortController = SortController(controller: ViewController())
        sortController.sort("zfa")
    }
}
