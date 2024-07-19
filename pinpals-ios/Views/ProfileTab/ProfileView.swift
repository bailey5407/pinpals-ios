//
//  ProfileView.swift
//  pinpals-ios
//
//  Created by Noah Bailey on 7/11/24.
//

import SwiftUI


struct HeaderView<Content: View>: View {
    
    let title: String
    let content: Content
    
    init(_ title: String, @ViewBuilder content: () -> Content){
        self.title = title
        self.content = content()
    }
    
    var body: some View{
        VStack{
            Text(title)
            content
        }
    }
}

struct ProfileView: View {
    var body: some View {
        Text("Profile View")
    }
}
