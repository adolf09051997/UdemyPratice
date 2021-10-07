//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Hung Yu Liao on 2021/8/7.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {

    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    func getBMIAdvice() -> String {
        let getBMIAdvice = bmi?.advice
        return getBMIAdvice ?? ""
    }
    func getColor() -> UIColor {
        let color = bmi?.color
        return color!
    }
    
    
   mutating func calculateBMI(hegiht: Float, weight: Float)  {
    let bmiValue =  weight / (hegiht*hegiht) // (hegiht*hegiht) = pow(height, 2)
    var advice = ""
    var color: UIColor
    if bmiValue < 18.5 {
        advice =  "Underweight"
        color = .blue
    }else if bmiValue < 24.9 {
        advice =  "Normal"
        color = .cyan
    }else {
        advice =  "Overweight"
        color = .red
    }
    bmi = BMI(value: bmiValue, advice: advice, color: color)
    
    }
    
}
