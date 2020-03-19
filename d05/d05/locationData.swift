//
//  locationData.swift
//  d05
//
//  Created by Melkozavr on 3/19/20.
//  Copyright © 2020 Melkozavr. All rights reserved.
//

import Foundation
import MapKit

class Pin: MKPointAnnotation {
    
    init(title:String, subtitle:String, coordinate: CLLocationCoordinate2D ) {
        super.init()
        self.title = title
        self.subtitle = subtitle
        self.coordinate = coordinate
    }
}

let locations : [Pin] = [
    Pin(title: "42", subtitle: "My school`s parent", coordinate: CLLocationCoordinate2D(latitude: 48.896928, longitude: 2.318345)),
    Pin(title: "School 21", subtitle: "My school", coordinate: CLLocationCoordinate2D(latitude: 55.7970746083292, longitude: 37.57963120937348)),
    Pin(title: "Home", subtitle: "My House", coordinate: CLLocationCoordinate2D(latitude: 55.8968, longitude: 37.4813)),
]
