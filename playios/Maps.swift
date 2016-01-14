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

class Maps: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var MapViewer: MKMapView!
    
    @IBOutlet weak var Find: UIBarButtonItem!
    
    @IBOutlet weak var MapSwitch: UISegmentedControl!
    
    var locmgr = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        MapViewer.showsUserLocation = true
      
        // Do any additional setup after loading the view.
        
        //let loc = CLLocationCoordinate2D(latitude: 40.755527, longitude: -74.142012)
        let loc2 = CLLocationCoordinate2D(latitude: 40.755251, longitude: -74.142473)
        
        let s = MKCoordinateSpan(latitudeDelta: 0.002, longitudeDelta: 0.002)
        let reg = MKCoordinateRegion(center: loc2, span: s)
        
        MapViewer.setRegion(reg, animated: true)
        
        
        let anno = MKPointAnnotation()
        anno.title = "MY LOCATON"
        anno.coordinate = loc2
        
        MapViewer.addAnnotation(anno)
        
        
        
        
        
        
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
        locmgr.delegate = self
        locmgr.desiredAccuracy = kCLLocationAccuracyBest
        locmgr.requestWhenInUseAuthorization()
        locmgr.startUpdatingLocation()
        
        func locationManager(manager: CLLocationManager!, didFailWithError error: NSError!) {
            print("Error while updating location " + error.localizedDescription)
        }
        
        
    }
    
   

}
