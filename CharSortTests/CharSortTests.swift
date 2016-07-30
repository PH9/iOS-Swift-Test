//
//  CharSortTests.swift
//  CharSortTests
//
//  Created by Wasith Theerapattrathamrong on 7/30/2559 BE.
//  Copyright © 2559 Wasith Theerapattrathamrong. All rights reserved.
//

import XCTest
@testable import CharSort

class CharSortTests: XCTestCase {

    override func setUp() {
        super.setUp()
    }

    /*
        teseData = [
            ("{input}", "{output}")
        ]
     */
    func test_Input_a_shouldReturn_a() {
        let testData = [
            ("a", "a"),
            ("ba", "ab"),
            ("dog", "dgo"),
            ("Horse", "ehors"),
            ("Hello world", "dehllloorw")
        ]

        testData.forEach {
            let result = Sorter().sort($0)
            XCTAssertEqual(result, $1)
        }
    }
}
