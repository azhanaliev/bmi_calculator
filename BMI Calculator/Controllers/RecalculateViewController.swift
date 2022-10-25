//
//  RecalculateViewController.swift
//  BMI Calculator
//
//  Created by Azamat on 25/10/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class RecalculateViewController: UIViewController {
    
    var bmiValue:String?
    var advice:String?
    var color:UIColor?
    
    @IBOutlet weak var bmiLabel: UILabel!
    
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
    }

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}
