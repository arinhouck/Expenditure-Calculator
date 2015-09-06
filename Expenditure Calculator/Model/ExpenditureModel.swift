//
//  ExpenditureModel.swift
//  Expenditure Calculator
//
//  Created by Arin Houck on 9/6/15.
//  Copyright (c) 2015 Arin Houck. All rights reserved.
//

import Foundation

class ExpenditureModel {
    var foodSum: Float, transportationSum: Float, householdSum: Float, otherSum: Float
    var foodPercentage: Float, transportationPercentage: Float, householdPercentage: Float, otherPercentage: Float
    
    init() {
        foodSum = 0
        transportationSum = 0
        householdSum = 0
        otherSum = 0
        
        foodPercentage = 0
        transportationPercentage = 0
        householdPercentage = 0
        otherPercentage = 0
    }
    
    
    func sumExpenses(foodValue: Float, transportationValue: Float, householdValue: Float, otherValue: Float) {
        foodSum += foodValue
        transportationSum += transportationValue
        householdSum += householdValue
        otherSum += otherValue
    }
    
    func calculatePercentages() {
        var totalExpenditures = foodSum + transportationSum + householdSum + otherSum
        
        if totalExpenditures == 0 { // Prevents from return nan when dividing by 0
            return
        }
        
        foodPercentage = (foodSum / totalExpenditures)*100
        transportationPercentage = (transportationSum / totalExpenditures)*100
        householdPercentage = (householdSum / totalExpenditures)*100
        otherPercentage = (otherSum / totalExpenditures)*100
    }
}