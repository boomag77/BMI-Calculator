//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Sergey on 11/19/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: Float?
    let optimalBmiValue: Float = 40.0 // For example
    
    @IBOutlet weak var bmiValueLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiValueLabel.text = String(format: "%.1f", self.bmiValue!)
        if self.bmiValue! > optimalBmiValue {
            adviceLabel.text = "DO NOT EAT MORE SNACKS"
        } else if self.bmiValue! < optimalBmiValue {
            adviceLabel.text = "EAT SOME MORE SNACKS"
        } else {
            adviceLabel.text = "EXELLENT!"
        }
        
    }
    
    @IBAction func recalculateButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    

}
