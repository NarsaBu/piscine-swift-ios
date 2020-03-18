//
//  ViewController.swift
//  ex00
//
//  Created by Melkozavr on 15.03.2020.
//  Copyright © 2020 Melkozavr. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.delegate = self
            tableView.dataSource = self
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Data.people.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "peopleCell") as! PeopleTableViewCell
        //cell?.textLabel?.text = Data.people[indexPath.row].0
        //cell?.detailTextLabel?.text = Data.people[indexPath.row].1
        //return cell!
        //for NOT custom styles!
        cell.nameLabel?.numberOfLines = 0
        cell.descriptionLabel?.numberOfLines = 0
        //cell.dateLabel?.numberOfLines = 0
        cell.people = Data.people[indexPath.row]
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 200
        return cell
    }
}

