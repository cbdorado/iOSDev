//
//  ViewController.swift
//  DatePicker
//
//  Created by Christian Dorado on 8/10/19.
//  Copyright © 2019 Christian Dorado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func didChangeDate(_ sender: UIDatePicker) {
        let date:Date = sender.date
        let formatter:DateFormatter = DateFormatter()
        formatter.dateFormat = "EEEE"
        let dayOfWeek:String = formatter.string(from: date)
        label.text = "Today was a \(dayOfWeek)"
    }
    

}

