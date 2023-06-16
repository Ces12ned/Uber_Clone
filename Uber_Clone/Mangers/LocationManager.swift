//
//  LocationManager.swift
//  Uber_Clone
//
//  Created by Edgar Cisneros on 07/06/23.
//

import CoreLocation

class LocationManager: NSObject, ObservableObject{
    
    private let locationManger = CLLocationManager()
    static let shared = LocationManager()
    @Published var userLocation: CLLocationCoordinate2D?
        
    override init() {
        super.init()
        locationManger.delegate = self 
        locationManger.desiredAccuracy = kCLLocationAccuracyBest
        locationManger.requestWhenInUseAuthorization()
        locationManger.startUpdatingLocation()
    }
}


extension LocationManager: CLLocationManagerDelegate{
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.first else {return}
        self.userLocation = location.coordinate
        locationManger.stopUpdatingLocation()
    }
    
    
}
