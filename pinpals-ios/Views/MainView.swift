//
//  ContentView.swift
//  pinpals-ios
//
//  Created by Noah Bailey on 6/15/24.
//

import SwiftUI
@_spi(Experimental) import MapboxMaps

struct MainView: View {
    @State var selectedTab = "MapView"
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HostView()
                .tabItem {
                    Image(systemName: "mappin.and.ellipse")
                }
            
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            
            PinPalsMapView()
                .tabItem{
                    Image(systemName: "map")
                }
                .tag("MapView")
                .ignoresSafeArea()
            
            MessagesView()
                .tabItem{
                    Image(systemName: "envelope")
                }
            
            ProfileView()
                .tabItem{
                    Image(systemName: "person")
                }
                .tag("ProfileView")
        }
        .onAppear() {
            UITabBar.appearance().backgroundColor = UIColor(Color.pinpalsBackground)
        }
        .tint(Color.pinpalsPrimary)
        
        
    }
}

#Preview {
    MainView()
}

