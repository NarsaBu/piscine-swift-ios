//
//  FirstViewController.swift
//  d05
//
//  Created by Melkozavr on 3/19/20.
//  Copyright © 2020 Melkozavr. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class FirstViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    var locationManager = CLLocationManager()
    var userLocation = CLLocationCoordinate2D()
    var pins = [MKPointAnnotation()]
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var locateMeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Settings
        locationManager.requestWhenInUseAuthorization()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
        locationManager.distanceFilter = 10
        mapView.showsUserLocation = true
        mapView.delegate = self
        
        // Add pins on the map
        mapView.addAnnotations(locations)
        zoomOnLocation(location: locations[2].coordinate)
    }
    
    // Change view type
    @IBAction func segmentedControlAction(_ sender: Any) {
        switch (segmentedControl.selectedSegmentIndex) {
        case 1:
            mapView.mapType = MKMapType.satellite
        case 2:
            mapView.mapType = MKMapType.hybrid
        default:
            mapView.mapType = MKMapType.standard
        }
    }
    
    // Get user's location and zoom on it
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]){
        guard let locValue: CLLocationCoordinate2D = manager.location?.coordinate else { return }
        zoomOnLocation(location: locValue)
    }
    
    // Ask for user's location
    @IBAction func locateMe(_ sender: Any) {
        locationManager.startUpdatingLocation()
        locationManager.stopUpdatingLocation()
    }
    
    // Zoom on list's selected location
    @IBAction func unwindToMapVC(segue:UIStoryboardSegue) {
        zoomOnLocation(location: userLocation)
    }
    
    // Zoom on specific location
    func zoomOnLocation(location:CLLocationCoordinate2D) {
        var mapRegion = MKCoordinateRegion()
        mapRegion.center = location
        mapRegion.span.latitudeDelta = 0.01;
        mapRegion.span.longitudeDelta = 0.01;
        mapView.setRegion(mapRegion, animated: true)
    }
    
    // Change pin's location color
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        if (annotation.isEqual(mapView.userLocation)) { return nil }
        let annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: "pin")
        annotationView.canShowCallout = true
        guard let title = annotation.title! else {return annotationView}
        switch(title) {
        case "42" :
            annotationView.pinTintColor = UIColor.blue
        case "School 21":
            annotationView.pinTintColor = UIColor.green
        case "Home" :
            annotationView.pinTintColor = UIColor.brown
        default:
            annotationView.pinTintColor = UIColor.red
        }
        return annotationView
    }
}

