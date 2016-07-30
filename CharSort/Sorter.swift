//
//  Sorter.swift
//  CharSort
//
//  Created by Wasith Theerapattrathamrong on 7/30/2559 BE.
//  Copyright © 2559 Wasith Theerapattrathamrong. All rights reserved.
//

import Foundation

/*
 To sort lowercase and sorting characters
 */
class Sorter {
    func sort(input: String) -> String {
        let noSpecialChars = input.stringByReplacingOccurrencesOfString(" ", withString: "")
        let lowerInput = noSpecialChars.lowercaseString
        return String(lowerInput.characters.sort())
    }
}
