//
//  ViewController.swift
//  Expenditure Calculator
//
//  Created by Arin Houck on 9/6/15.
//  Copyright (c) 2015 Arin Houck. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
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


}

