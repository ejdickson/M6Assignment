//
//  CurrencyLogic.swift
//  M6Assignment
//
//  Created by Emma Brennan on 2/18/24.
//

import Foundation

struct CurrencyLogic {
    
    // set variables to hold user input/switch selection/calculations
    var usd : Int = 900
    
    var cur1Bool = true
    var cur2Bool = true
    var cur3Bool = true
    var cur4Bool = true
    
    var cur1Val : Double = 0
    var cur2Val : Double = 0
    var cur3Val : Double = 0
    var cur4Val : Double = 0
    
    // set logic to check and store user input
    
    // set logic for switch changes and appropriate calculations
    mutating func setCur1(_ switchValue: Bool) {
        if switchValue {
            // the else statement executes but the if statement breaks everything
            cur1Bool = true
            print(cur1Val)
            cur1Val = Double(usd) * 0.93
            print(cur1Val)
            print(cur1Bool)
        } else {
            cur1Bool = false
        }
    }
    
    mutating func setCur2(_ switchValue2: Bool) {
        if switchValue2 {
            cur2Bool = true
            cur2Val = Double(usd) * 1.35
        } else {
            cur2Bool = false

        }
    }
    
    mutating func setCur3(_ switchValue3: Bool) {
        if switchValue3 {
            cur3Bool = true
            cur3Val = Double(usd) * 7.20
        } else {
            cur3Bool = false
        }
    }
    
    mutating func setCur4(_ switchValue4: Bool) {
        if switchValue4 {
            cur4Bool = true
            cur4Val = Double(usd) * 17.05
        } else {
            cur4Bool = false
        }
    }
    
}
