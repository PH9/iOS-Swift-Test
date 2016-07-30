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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func submitButtonClicked(sender: AnyObject) {
        let sorted = Sorter().sort(inputTextField.text!)
        outputLabel.text = sorted
    }

}
