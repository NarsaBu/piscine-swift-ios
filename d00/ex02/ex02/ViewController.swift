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
    
    @IBAction func buttonOne(_ sender: UIButton) {
        textField.text = "1"
        print("1")
    }
    
    @IBAction func buttonTwo(_ sender: UIButton) {
        textField.text = "2"
        print("2")
    }
    
    @IBAction func buttonThree(_ sender: UIButton) {
        textField.text = "3"
        print("3")
    }
    
    @IBAction func buttonFour(_ sender: UIButton) {
        textField.text = "4"
        print("4")
    }
    
    @IBAction func buttonFive(_ sender: UIButton) {
        textField.text = "5"
        print("5")
    }
    
    @IBAction func buttonSix(_ sender: UIButton) {
        textField.text = "6"
        print("6")
    }
    
    @IBAction func buttonSeven(_ sender: UIButton) {
        textField.text = "7"
        print("7")
    }
    
    @IBAction func buttonEight(_ sender: UIButton) {
        textField.text = "8"
        print("8")
    }
    
    @IBAction func buttonNine(_ sender: Any) {
        textField.text = "9"
        print("9")
    }
    
    @IBAction func buttonZero(_ sender: UIButton) {
        textField.text = "0"
        print("0")
    }
    
    
}

