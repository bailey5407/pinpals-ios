//
//  PinPalsMap.swift
//  pinpals-ios
//
//  Created by Noah Bailey on 6/15/24.
//

import SwiftUI
import CoreLocation
@_spi(Experimental) import MapboxMaps

struct PinPalsMap: View {
    
    // Viewport state variable for 2-way data binding
    @State var viewport: Viewport = .camera(center: Provo, zoom: 12, pitch: 0)
    
    var body: some View {
        VStack {
            Map(viewport: $viewport)
                .ignoresSafeArea()
        }
    }
    
}


private let Provo = CLLocationCoordinate2D(latitude: 40.2338, longitude: -111.6585)

#Preview {
    PinPalsMap()
}
