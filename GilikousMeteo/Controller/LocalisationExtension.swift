//
//  LocalisationExtension.swift
//  GilikousMeteo
//
//  Created by Bryan Richard on 27/04/2019.
//  Copyright © 2019 Bryan Richard. All rights reserved.
//

import Foundation
import UIKit
import MapKit


extension MeteoController: CLLocationManagerDelegate {
    
    func miseEnPlaceCLlocation(){
        
        locationManager = CLLocationManager()
        locationManager?.delegate = self
        locationManager?.requestAlwaysAuthorization()
        locationManager?.startUpdatingLocation()
        
        
    }
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard locations.count > 0 else { return }
        
        
        locationManager?.stopUpdatingLocation()
        let positionActuelle = locations[0]
        let latitude = positionActuelle.coordinate.latitude
        let longitude = positionActuelle.coordinate.longitude
        obtenirPrevisionMeteo(latitude: latitude, longitude: longitude)
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error.localizedDescription)
    }
    
}
