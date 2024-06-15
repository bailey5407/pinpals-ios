//
//  ContentView.swift
//  pinpals-ios
//
//  Created by Noah Bailey on 6/15/24.
//

import SwiftUI

struct ContentView: View {
    @State var collapsed: Bool = false
    
    var body: some View {
        ZStack {
            PinPalsMap()
        }
        
    }
}

#Preview {
    ContentView()
}

