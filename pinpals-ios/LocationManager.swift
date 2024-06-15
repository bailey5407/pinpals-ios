//
//  LocationManager.swift
//  pinpals-ios
//
//  Created by Noah Bailey on 6/15/24.
//

import Foundation
import CoreLocation
import Combine

class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {
    
    private let locationManager = CLLocationManager()
    
    // Published variables: location and permissions
    @Published var location: CLLocation? = nil
    @Published var locationStatus: CLAuthorizationStatus?
    
    // Override the init function of the superclass (NSObject)
    override init(){
        // Call the init function of the superclass
        super.init()
        locationManager.delegate = self
        // NOTE: Best desired accuracy may impact battery life. Test this
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestAlwaysAuthorization()
        locationManager.startUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else { return }
        print("Location: \(location.coordinate.latitude), \(location.coordinate.longitude)")
    }

    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Failed to get location: \(error.localizedDescription)")
    }
}
