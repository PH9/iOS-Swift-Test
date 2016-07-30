//
//  SortController.swift
//  CharSort
//
//  Created by Wasith Theerapattrathamrong on 7/30/2559 BE.
//  Copyright © 2559 Wasith Theerapattrathamrong. All rights reserved.
//

import Foundation
import UIKit

protocol SortControllerProtocol {
    func displayResult(result: String)
}

class SortController {

    var controller: SortControllerProtocol

    init(controller: SortControllerProtocol) {
        self.controller = controller
    }

    func sort(input: String) {
        let sorter = Sorter()
        let sorted = sorter.sort(input)
        self.controller.displayResult(sorted)
    }
}
