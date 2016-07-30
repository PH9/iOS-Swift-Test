//
//  ViewController.swift
//  CharSort
//
//  Created by Wasith Theerapattrathamrong on 7/30/2559 BE.
//  Copyright © 2559 Wasith Theerapattrathamrong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var outputLabel: UILabel!

    let sorter = Sorter()

    @IBAction func submitButtonClicked(sender: AnyObject) {
        let sortController = SortController(controller: self)
        sortController.sort(inputTextField.text!)
    }

//    func setOutputLabel(text: String) {
//        outputLabel.text = text
//    }

}
