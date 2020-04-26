//
//  CalculatorLogic.swift
//  BMI Calculator
//
//  Created by Rollin Francois on 4/26/20.
//  Copyright © 2020 Francois Technology. All rights reserved.
//

import Foundation

struct CalculatorLogic {
    
    var bmi: Float = 0.0
    
    
    mutating func calculateBMI(height: Float, weight: Float) {
        bmi = weight / (height * height)
        
    }
    
    func getBMIValue() -> String {
        let bmiSimplified = String(format: "%.1f", bmi)
        return bmiSimplified
        
    }
    
}
