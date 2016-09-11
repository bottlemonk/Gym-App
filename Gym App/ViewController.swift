//
//  ViewController.swift
//  Gym App
//
//  Created by Mike Thomas on 02/08/2016.
//  Copyright © 2016 Mike Thomas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Properties
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var labelTextField: UILabel!

        override func viewDidLoad() {
        super.viewDidLoad()
        
            // Handle the text field’s user input through delegate callbacks.
            nameTextField.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
    mealNameLabel.text = textField.text
    }
    
    // MARK: Actions
    
    @IBAction func setDefaultLabelText(sender: UIButton) {
    labelTextField.text = "Default Text"
    }

}

