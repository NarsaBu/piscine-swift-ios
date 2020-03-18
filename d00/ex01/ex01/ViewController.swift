//
//  ViewController.swift
//  ex01
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

    @IBOutlet weak var helloLabel: UILabel!
    @IBAction func helloButton(_ sender: UIButton) {
        helloLabel.text = "Hello World !"
    }
    
}

