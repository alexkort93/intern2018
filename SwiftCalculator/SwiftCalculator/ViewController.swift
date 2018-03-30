//
//  ViewController.swift
//  SwiftCalculator
//
//  Created by Alex on 27.03.18.
//  Copyright © 2018 Alex. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var Buttons: [UIButton]!
    @IBOutlet weak var AuxLabel: UILabel!
    @IBOutlet weak var MainLabel: UILabel!
    
    var Operand1: Double = 0
    var Operand2: Double = 0
    var Result: Double = 0
    var IsInt: Bool = true
    var HasPoint: Bool = false
    var Operation: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        MainLabel.text = ""
        AuxLabel.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func push( sender: UIButton ) {
        MainLabel.text?.append((sender.titleLabel?.text!)!)
        if (MainLabel.text?.contains("."))! {
            HasPoint = true
        } else {
            HasPoint = false
        }
    }
    
    @IBAction func clickSignChangeButton( sender: UIButton) {
        MainLabel.text? = String(-Double(MainLabel.text!)!)
    }
    
    @IBAction func clickClearButton( sender: UIButton) {
        MainLabel.text? = ""
        AuxLabel.text? = ""
        Operand1 = 0
        Operand2 = 0
        Result = 0
        IsInt = true
        HasPoint = false
        Operation = ""
    }
    
    @IBAction func clickDeleteButton( sender: UIButton) {
        let number = MainLabel.text
        MainLabel.text?.remove(at: (number?.index(before: (number?.endIndex)!))!)
        if (MainLabel.text?.contains("."))! {
            HasPoint = true
        } else {
            HasPoint = false
        }
    }
    
    @IBAction func clickPointButton( sender: UIButton) {
        if HasPoint == false {
           MainLabel.text?.append(".")
            HasPoint = true
        }
    }
    
    @IBAction func clickAddButton( sender: UIButton) {
        Operand1 = Double(MainLabel.text!)!
        AuxLabel.text? = AuxLabel.text! + String(Operand1) + "+"
        Operation = "+"
        MainLabel.text? = ""
        HasPoint = false
    }
    
    @IBAction func clickSubButton( sender: UIButton) {
        Operand1 = Double(MainLabel.text!)!
        AuxLabel.text? = AuxLabel.text! + String(Operand1) + "-"
        Operation = "-"
        MainLabel.text? = ""
        HasPoint = false
    }
    
    @IBAction func clickMultiButton( sender: UIButton) {
        Operand1 = Double(MainLabel.text!)!
        AuxLabel.text? = AuxLabel.text! + String(Operand1) + "*"
        Operation = "*"
        MainLabel.text? = ""
        HasPoint = false
    }
    
    @IBAction func clickDivButton( sender: UIButton) {
        Operand1 = Double(MainLabel.text!)!
        AuxLabel.text? = AuxLabel.text! + String(Operand1) + "/"
        Operation = "/"
        MainLabel.text? = ""
        HasPoint = false
    }
    
    @IBAction func clickResultButton( sender: UIButton) {
        Operand2 = Double(MainLabel.text!)!
        switch (Operation) {
        case "+":
            AuxLabel.text? = String(Operand1) + "+" + String(Operand2)
            Result = Operand1 + Operand2
            MainLabel.text? = "=" + String(Result)
           
        case "-":
            AuxLabel.text? = String(Operand1) + "-" + String(Operand2)
            Result = Operand1 - Operand2
            MainLabel.text? = "=" + String(Result)
        case "*":
            AuxLabel.text? = String(Operand1) + "*" + String(Operand2)
            Result = Operand1 * Operand2
            MainLabel.text? = "=" + String(Result)
        case "/":
            AuxLabel.text? = String(Operand1) + "/" + String(Operand2)
            Result = Operand1 / Operand2
            MainLabel.text? = "=" + String(Result)
        default:
            AuxLabel.text? = ""
            MainLabel.text? = "Error"
            break
        }
        
    }
    
    @IBAction func clickProcentButton( sender: UIButton) {
        Operand1 = Double(MainLabel.text!)!
        AuxLabel.text? = AuxLabel.text! + String(Operand1) + "%"
        Result = Operand1 / 100
        MainLabel.text? = "=" + String(Result)
        HasPoint = false
    }
    
    @IBAction func clickRootButton( sender: UIButton) {
        Operand1 = Double(MainLabel.text!)!
        AuxLabel.text? = "Sqrt(" +  String(Operand1) + ")"
        Result = sqrt(Operand1)
        MainLabel.text? = "=" + String(Result)
        HasPoint = false
    }
    
    @IBAction func clickSinButton( sender: UIButton) {
        Operand1 = Double(MainLabel.text!)!
        AuxLabel.text? = "Sin(" +  String(Operand1) + ")"
        Result = sin(Operand1)
        MainLabel.text? = "=" + String(Result)
        HasPoint = false
    }
    
    @IBAction func clickCosButton( sender: UIButton) {
        Operand1 = Double(MainLabel.text!)!
        AuxLabel.text? = "Cos(" +  String(Operand1) + ")"
        Result = cos(Operand1)
        MainLabel.text? = "=" + String(Result)
        HasPoint = false
    }
    
}

