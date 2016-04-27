//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Dominic Rogers on 4/11/16.
//  Copyright © 2016 Dominic Rogers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func satisfactionControl(sender: UISegmentedControl) {
        tip.satisfaction = sender.selectedSegmentIndex
        //check for value of an optional
        //if it has a value, use that value
        //if it does not use 0.0
        let temp : Int? = Int(textField.text!)
        if temp != nil{
            tip.mealPrice = Double(temp!)
        }else{
            tip.mealPrice = 0
        }
        print(tip.calculateTip())
        amountToTip.text = String(tip.calculateTip())
        amountToTip.backgroundColor = UIColor.whiteColor()
    }
    
    @IBOutlet weak var satisfaction: UISegmentedControl!
    
    @IBAction func insertMealAmount(sender: UITextField) {
        tip.satisfaction = satisfaction.selectedSegmentIndex
        let temp2 : Int? = Int(textField.text!)
        if temp2 != nil{
            tip.mealPrice = Double(temp2!)
        }else{
            tip.mealPrice = 0
        }
        amountToTip.text = String(tip.calculateTip())
    }
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var amountToTip: UILabel!
    var tip = Tip()
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    



}

