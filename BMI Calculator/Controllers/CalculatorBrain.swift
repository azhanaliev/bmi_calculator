//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Azamat on 25/10/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBmi(height:Float, weight:Float){
        let bmiValue = weight/pow(height,2)
        
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: UIColor.blue)
        }else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: UIColor.green)
        }else{
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: UIColor.red)
        }
    }
    
    func getBmiResult() -> String{
        String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getBmiAdvice() -> String{
        bmi?.advice ?? "No advice"
    }
    
    func getBmiColor() -> UIColor{
        bmi?.color ?? UIColor.white
    }
}
