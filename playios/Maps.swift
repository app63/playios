//
//  Maps.swift
//  playios
//
//  Created by Aditya Pujari on 1/13/16.
//  Copyright © 2016 Aditya Pujari. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class Maps: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {

    @IBOutlet weak var MapViewer: MKMapView!
    
  
    @IBOutlet weak var MapSwitch: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func MapSwitchFunc(sender: AnyObject) {
        
        if MapSwitch.selectedSegmentIndex == 0 {
            MapViewer.mapType = MKMapType.Standard
            
            
        }else if MapSwitch.selectedSegmentIndex == 1 {
            MapViewer.mapType = MKMapType.Satellite
            
        }else if MapSwitch.selectedSegmentIndex == 2 {
            MapViewer.mapType = MKMapType.Hybrid
            
        }
    }
    
    
    
    @IBAction func FindFunction(sender: AnyObject) {
        
        self.MapViewer.delegate = self
        self.MapViewer.showsUserLocation = true
        
        

        }
        
        
    func mapView(mapView: MKMapView, didUpdateUserLocation userLocation: MKUserLocation) {
        
        let spanning = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        let mylocation = MKCoordinateRegionMake(userLocation.coordinate, spanning)
        
        self.MapViewer.setRegion(mylocation, animated: true)
    }


}
