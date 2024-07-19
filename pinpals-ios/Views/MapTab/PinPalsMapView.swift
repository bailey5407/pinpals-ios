//  Wraps the UIKit implementation of Mapbox
//
//  Created by Noah Bailey on 6/15/24.
//

import UIKit
import SwiftUI
@_spi(Experimental) import MapboxMaps


// Constant for coordinates of Provo
let provo: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 40.256104, longitude: -111.665920)


struct pin: Identifiable {
    var id: Int
    var location: CLLocationCoordinate2D
    var color: Color
    var emoji: String
    var description: String?
}

let pins = [
    pin(id: 3, location: CLLocationCoordinate2D(latitude: 40.255949, longitude: -111.664519), color: .blue, emoji: "😭"),
    pin(id: 1, location: CLLocationCoordinate2D(latitude: 40.256596, longitude: -111.665597), color: .red, emoji: "😈"),
    pin(id: 2, location: CLLocationCoordinate2D(latitude: 40.256641, longitude: -111.665184), color: .green, emoji: "😎")
]

// SwiftUI implementation
struct PinPalsMapView: View {
    
    @State private var viewport = Viewport.camera(
        center: provo,
        zoom: 15,
        bearing: 0,
        pitch: 0 )
    
    func resetViewport() {
        viewport = Viewport.camera(
            center: provo,
            zoom: 15,
            bearing: 0,
            pitch: 0 )
    }
                                                                            
    var body: some View {
        MapReader { proxy in
            Map(viewport: $viewport) {
                ForEvery(pins) { pin in
                    MapViewAnnotation(coordinate: pin.location) {
                        PinView(pin.emoji, color: pin.color)
                            .onTapGesture {
                                print("tapped")
                                resetViewport()
                            }
                    }
                    .allowOverlap(true)
                }
            }
        }
    }
}







// UIKit implemention
// import MapboxMaps
//
//struct PinPalsMapView: UIViewControllerRepresentable {
//    func makeUIViewController(context: Context) -> MapViewController {
//        MapViewController()
//    }
//    
//    func updateUIViewController(_ mapViewController: MapViewController, context: Context) {
//        
//    }
//}
