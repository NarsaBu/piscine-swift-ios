//
//  PeopleTableViewCell.swift
//  ex00
//
//  Created by Melkozavr on 15.03.2020.
//  Copyright © 2020 Melkozavr. All rights reserved.
//

import UIKit

class PeopleTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var people: (String, String)? {
        didSet {
            if let p = people {
                nameLabel?.text = p.0
                descriptionLabel.text = p.1
            }
        }
    }

}
