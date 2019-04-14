//
//  ViewController.swift
//  MoneyConverter
//
//  Created by Rohit Shivdas Badgujar on 22/01/2019.
//  Copyright © 2019 UCC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Outlets and Action
    
    @IBOutlet weak var euroTextField: UITextField!
    @IBOutlet weak var dollarTextField: UITextField!
    
    @IBAction func clearAction(_ sender: UIButton) {
        // clear textView
        euroTextField.text = ""
        dollarTextField.text = ""
        
    }
    
    @IBAction func convertAction(_ sender: UIButton) {
        
        if euroTextField.text != "" && dollarTextField.text == "" {
            
            //read and convert from euro
            let euroAmount = Double(euroTextField.text!)
            //convert
            let dollarAmount = directConvert(amount: euroAmount!, rate: 1.234)
            
            dollarTextField.text = "\(dollarAmount)"
        }
        else if euroTextField.text == "" && dollarTextField.text != "" {
            
            //read and convert from euro
            let dollarAmount = Double(dollarTextField.text!)
            //convert
            var euroAmount = invertConvert(amount: dollarAmount!, rate: 1.234)
            euroAmount = (euroAmount*100).rounded()/100
            euroTextField.text = "\(euroAmount)"
        }
        else {
            
            print("Not possible")
        }
    }
    func directConvert(amount: Double, rate: Double) -> Double {
        return amount * rate
    }
    func invertConvert(amount: Double, rate: Double) -> Double {
        return amount / rate
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

