//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var height: UILabel!
    
    @IBOutlet weak var weight: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSliderChange(_ sender: UISlider) {
        height.text = "\(String(format: "%.2f", sender.value))m"
    }
    
    @IBAction func weightSliderChange(_ sender: UISlider) {
        weight.text = "\(String(format: "%.0f", sender.value))Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let BMI = weightSlider.value/pow(heightSlider.value,2)
        print(BMI)
    }
}

