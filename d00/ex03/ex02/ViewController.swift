//
//  ViewController.swift
//  ex02
//
//  Created by Melkozavr on 09.03.2020.
//  Copyright © 2020 Melkozavr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBOutlet weak var textField: UILabel!
    
    var number: Int = 0
    var firstNumEntered: Int = 0
    var operation: Int = 0
    var result: Int = 0
    
    //methods
    func display(content: Int)
    {
        textField.text = String(content)
    }
    
    func addDigit (digit: Int)
    {
        self.number = self.number &* 10
        if self.number >= 0
        {
            self.number = self.number &+ digit
        }
        else
        {
            self.number = self.number &- digit
        }
        display(content: self.number)
    }
    
    func trace(n1: Int, op: String, n2: Int, res: Int)
    {
        let str = String(n1) + op + String(n2) + "=" + String(res)
        print(str)
    }
    
    //buttons
    
    @IBAction func buttonOne(_ sender: UIButton) {
        addDigit(digit: 1)
    }
    
    @IBAction func buttonTwo(_ sender: UIButton) {
        addDigit(digit: 2)
    }
    
    @IBAction func buttonThree(_ sender: UIButton) {
        addDigit(digit: 3)
    }
    
    @IBAction func buttonFour(_ sender: UIButton) {
        addDigit(digit: 4)
    }
    
    @IBAction func buttonFive(_ sender: UIButton) {
        addDigit(digit: 5)
    }
    
    @IBAction func buttonSix(_ sender: UIButton) {
        addDigit(digit: 6)
    }
    
    @IBAction func buttonSeven(_ sender: UIButton) {
        addDigit(digit: 7)
    }
    
    @IBAction func buttonEight(_ sender: UIButton) {
        addDigit(digit: 8)
    }
    
    @IBAction func buttonNine(_ sender: Any) {
        addDigit(digit: 9)
    }
    
    @IBAction func buttonZero(_ sender: UIButton) {
        addDigit(digit: 0)
    }
    
    @IBAction func buttonAC(_ sender: UIButton) {
        print("AC: full erace")
        self.number = 0
        self.firstNumEntered = 0
        self.operation = 0
        textField.text = ""
    }
    
    @IBAction func buttonNEG(_ sender: UIButton) {
        print("NEG: inversion number")
        self.number = self.number &* (-1)
        textField.text = String(self.number)
    }
    
    @IBAction func buttonDivide(_ sender: UIButton) {
        print("/: division")
        self.operation = 4
        self.firstNumEntered = self.number
        self.number = 0
    }
    
    @IBAction func buttonMulti(_ sender: UIButton) {
        print("*: multiplication")
        self.operation = 3
        self.firstNumEntered = self.number
        self.number = 0
    }
    
    @IBAction func buttonMinus(_ sender: UIButton) {
        print("-: substraction")
        self.operation = 2
        self.firstNumEntered = self.number
        self.number = 0
    }
    
    @IBAction func buttonPlus(_ sender: UIButton) {
        print("+: addition")
        self.operation = 1
        self.firstNumEntered = self.number
        self.number = 0
    }
    
    @IBAction func buttonEqual(_ sender: UIButton) {
        print("=: result")
        
        switch (operation)
        {
        case 1: //addition
            self.result = self.number + self.firstNumEntered
            display(content: self.result)
            trace(n1: self.firstNumEntered, op: "+", n2: self.number, res:self.result)
            
        case 2: //substraction
            self.result = self.number - self.firstNumEntered
            display(content: self.result)
            trace(n1: self.firstNumEntered, op: "-", n2: self.number, res:self.result)
            
        case 3: //multiprication
            self.result = self.number * self.firstNumEntered
            display(content: self.result)
            trace(n1: self.firstNumEntered, op: "*", n2: self.number, res:self.result)
            
        case 4: //division
            if self.number != 0
            {
                self.result = self.number / self.firstNumEntered
                display(content: self.result)
                trace(n1: self.firstNumEntered, op: "/", n2: self.number, res:self.result)
            }
            else
            {
                textField.text = "Error ! Division on zero"
                self.result = 0
            }
            
        default:
            self.result = 0
            textField.text = "Error ! Unknown operation..."
        }
        self.firstNumEntered = 0
        self.number = 0
    }
}

