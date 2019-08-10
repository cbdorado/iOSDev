//
//  ViewController.swift
//  Basic
//
//  Created by Christian Dorado on 8/4/19.
//  Copyright © 2019 Christian Dorado. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myTextField.delegate = self
    }
    @IBAction func didTapButton(_ sender: UIButton) {
        if let name = myTextField.text {
            myLabel.text = "Hi \(name)!"
            myTextField.resignFirstResponder()
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        myTextField.resignFirstResponder()
        return false
    }
}

