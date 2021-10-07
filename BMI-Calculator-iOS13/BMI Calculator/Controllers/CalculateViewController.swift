//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    
    var calculatorBrain = CalculatorBrain()
        
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = twoDecimals(number: heightSlider.value)
        heightLabel.text = "\(height)m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight)Kg"
    }
    
    func twoDecimals(number: Float) -> Float{
       let stringValue = String(format: "%.2f", number)
       return Float(stringValue)!
   }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let hegiht = twoDecimals(number: heightSlider.value)
        let weight = twoDecimals(number: weightSlider.value)
       
        calculatorBrain.calculateBMI(hegiht: hegiht, weight: weight)
      
       performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultsViewController //Must be destination !! Not "description"
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.bmiAdvice = calculatorBrain.getBMIAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
    
}

