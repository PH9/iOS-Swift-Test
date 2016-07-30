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

    @IBAction func submitButtonClicked(sender: AnyObject) {
        let sorted = Sorter().sort(inputTextField.text!)
        outputLabel.text = sorted
    }

}
