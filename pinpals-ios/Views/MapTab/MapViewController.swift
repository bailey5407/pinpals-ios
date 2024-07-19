//
//  Map_UIKit.swift
//  pinpals-ios
//
//  Created by Noah Bailey on 7/15/24.
//

import UIKit
import MapboxMaps

class MapViewController: UIViewController {

    override public func viewDidLoad() {
        super.viewDidLoad()

        let mapView = MapView(frame: view.bounds)
        let cameraOptions = CameraOptions(
            center: CLLocationCoordinate2D(latitude: 40.256104, longitude: -111.665920),
            zoom: 17.5,
            bearing: 0,
            pitch: 40
        )
        mapView.mapboxMap.setCamera(to: cameraOptions)
        mapView.autoresizingMask = [.flexibleWidth, .flexibleHeight]

        view.addSubview(mapView)
    }
}
