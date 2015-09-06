//
//  ViewController.swift
//  Expenditure Calculator
//
//  Created by Arin Houck on 9/6/15.
//  Copyright (c) 2015 Arin Houck. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var expenditureModel: ExpenditureModel = ExpenditureModel()
    
    @IBOutlet weak var foodField: UITextField!
    @IBOutlet weak var transportationField: UITextField!
    @IBOutlet weak var householdField: UITextField!
    @IBOutlet weak var otherField: UITextField!
    
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var clearAllButton: UIButton!
    
    
    @IBOutlet weak var foodTotalField: UITextField!
    @IBOutlet weak var foodPercentage: UILabel!
    
    @IBOutlet weak var transportationTotalField: UITextField!
    @IBOutlet weak var transportationPercentage: UILabel!
    
    @IBOutlet weak var householdTotalField: UITextField!
    @IBOutlet weak var householdPercentage: UILabel!
    
    @IBOutlet weak var otherTotalField: UITextField!
    @IBOutlet weak var otherPercentage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Initialize values for text fields to 0
        self.initializeTextValues()
        
        // Button Styling
        addButton.layer.cornerRadius = 5
        addButton.layer.borderWidth = 1
        addButton.layer.borderColor = UIColor(red: 0, green: 220, blue: 229, alpha: 1).CGColor
        
        clearButton.layer.cornerRadius = 5
        clearButton.layer.borderWidth = 1
        clearButton.layer.borderColor = UIColor(red: 0, green: 220, blue: 229, alpha: 1).CGColor
        
        clearAllButton.layer.cornerRadius = 5
        clearAllButton.layer.borderWidth = 1
        clearAllButton.layer.borderColor = UIColor(red: 0, green: 220, blue: 229, alpha: 1).CGColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Hide status bar
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    // Resign func for the return key
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.foodField.resignFirstResponder()
        self.transportationField.resignFirstResponder()
        self.householdField.resignFirstResponder()
        self.otherField.resignFirstResponder()
        return true
    }
    
    // Keyboard disappears on touch outside context
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.foodField.resignFirstResponder()
        self.householdField.resignFirstResponder()
        self.otherField.resignFirstResponder()
    }
    
    private func initializeTextValues() {
        self.resetValueFields()
        self.resetTotalFields()
    }
    
    private func resetValueFields() {
        foodField.text = "0"
        transportationField.text = "0"
        householdField.text = "0"
        otherField.text = "0"
    }
    
    private func resetTotalFields() {
        foodTotalField.text = "0"
        transportationTotalField.text = "0"
        householdTotalField.text = "0"
        otherTotalField.text = "0"
    }
    
    private func clearPercentages() {
        foodPercentage.text = "0%"
        transportationPercentage.text = "0%"
        householdPercentage.text = "0%"
        otherPercentage.text = "0%"
    }
    
    @IBAction func touchAdd(sender: UIButton) {
        expenditureModel.sumExpenses(
            (foodField.text as NSString).floatValue,
            transportationValue: (transportationField.text as NSString).floatValue,
            householdValue: (householdField.text as NSString).floatValue,
            otherValue: (otherField.text as NSString).floatValue
        )
        expenditureModel.calculatePercentages()
        
        foodTotalField.text = "\(expenditureModel.foodSum)"
        transportationTotalField.text = "\(expenditureModel.transportationSum)"
        householdTotalField.text = "\(expenditureModel.householdSum)"
        otherTotalField.text = "\(expenditureModel.otherSum)"
        
        foodPercentage.text = "\(expenditureModel.foodPercentage)%"
        transportationPercentage.text = "\(expenditureModel.transportationPercentage)%"
        householdPercentage.text = "\(expenditureModel.householdPercentage)%"
        otherPercentage.text = "\(expenditureModel.otherPercentage)%"
        
    }
    @IBAction func touchClear(sender: UIButton) {
        self.resetValueFields()
        
    }
    @IBAction func touchClearAll(sender: UIButton) {
        self.initializeTextValues()
        self.clearPercentages()
        expenditureModel = ExpenditureModel()
    }
    


}

