//
//  APITwitterDelegate.swift
//  d04
//
//  Created by Melkozavr on 18.03.2020.
//  Copyright © 2020 Melkozavr. All rights reserved.
//

import Foundation

protocol APITwitterDelegate {
    func apiTwitter(name: [Tweet])
    func error(error: NSError)
}
