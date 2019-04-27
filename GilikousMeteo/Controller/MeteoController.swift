//
//  MeteoController.swift
//  GilikousMeteo
//
//  Created by Bryan Richard on 27/04/2019.
//  Copyright © 2019 Bryan Richard. All rights reserved.
//

import UIKit
import MapKit

class MeteoController: UIViewController {

    var locationManager: CLLocationManager?
    
    let test = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        miseEnPlaceCLlocation()
       
    }
    
    
    func obtenirPrevisionMeteo(latitude: Double, longitude: Double) {
        
        let urlDeBase = "http://api.openweathermap.org/data/2.5/forecast?"
        let latitude = "lat" + String(latitude)
        let longitude = "&lon" + String(longitude)
        let uniteEtLangue = "&units=metric&lang=fr"
        let cleAPI = "&APPID=" + API
        let urlString = urlDeBase + latitude + longitude + uniteEtLangue + cleAPI
        print(urlString)
        
    }


}
