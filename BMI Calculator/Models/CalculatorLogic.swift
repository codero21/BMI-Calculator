//
//  CalculatorLogic.swift
//  BMI Calculator
//
//  Created by Rollin Francois on 4/26/20.
//  Copyright © 2020 Francois Technology. All rights reserved.
//

import UIKit
import AudioToolbox


struct CalculatorLogic {
    
    var bmi: BMI?
    
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "You are underweight!", color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
            AudioServicesPlayAlertSound(kSystemSoundID_Vibrate)
        } else if bmiValue < 24.5 {
            bmi = BMI(value: bmiValue, advice: "You are quite healthy!", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        } else if bmiValue < 40 {
            bmi = BMI(value: bmiValue, advice: "You are overweight", color: #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1))
            AudioServicesPlayAlertSound(kSystemSoundID_Vibrate)
        } else {
            bmi = BMI(value: bmiValue, advice: "You are OBESE FR!!", color: #colorLiteral(red: 1, green: 0.1133150124, blue: 0.04508389556, alpha: 1))
            AudioServicesPlayAlertSound(kSystemSoundID_Vibrate)
        }
        
    }
    
    func getBMIValue() -> String {
        let bmiSimplified = String(format: "%.1f", bmi?.value ?? "0.0")
        return bmiSimplified
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ??  #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1)
    }
    
}
