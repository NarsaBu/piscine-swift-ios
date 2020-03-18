//
//  SecondViewController.swift
//  ex00
//
//  Created by Melkozavr on 16.03.2020.
//  Copyright © 2020 Melkozavr. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var nameAddTextField: UITextField!
    
    @IBOutlet weak var dateAddDatePicker: UIDatePicker!
    
    @IBOutlet weak var descriptionAddTextView: UITextView!
    
    @IBAction func doneButton(_ sender: UIButton) {
        if let name = nameAddTextField.text {
            print(name)
        }
        if let description = descriptionAddTextView.text {
            print(description)
        }
        let format = DateFormatter()
        format.dateFormat = "dd MMMM yyyy HH:mm:ss"
        let date = format.string(from: dateAddDatePicker.date)
        print(date)
    }
    

}
