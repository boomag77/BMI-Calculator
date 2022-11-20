//
//  BmiCalculator.swift
//  BMI Calculator
//
//  Created by Sergey on 11/19/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct BmiCalculator {
    var height: Float
    var weight: Float
    
    init(_ height: Float, _ weight: Float) {
        self.height = height
        self.weight = weight
    }
    
    func getBmiValue() -> Float {
        let bmi = weight / (pow(height, 2))
        return bmi
    }
}
