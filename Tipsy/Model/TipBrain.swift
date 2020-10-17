//
//  TipBrain.swift
//  Tipsy
//
//  Created by Tarokh on 6/30/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct TipBrain {
    
    // define some variables
    var tipValue: Tip?
    
    // define some functions
    mutating func calculateTip(amountValue: Double, numberOfPeople: Double, tip: Double) {
        let result = amountValue * (1 + tip) / Double(numberOfPeople)
        tipValue = Tip(amountPerPerson: result)
    }
    
    func getAmountPerPerson() -> Double {
        return tipValue?.amountPerPerson ?? 0.0
    }
    
}
