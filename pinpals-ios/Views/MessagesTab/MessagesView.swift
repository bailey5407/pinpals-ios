//
//  MessagesView.swift
//  pinpals-ios
//
//  Created by Noah Bailey on 7/11/24.
//

import SwiftUI

struct MessagesView: View {
    
    struct PinView: View {
        
        let color: Color
        let emoji: String
        @State var circleWidth: CGFloat = 60
        
        init(_ emoji: String, color: Color){
            self.emoji = emoji
            self.color = color
        }
        
        var body: some View {
            ZStack{
                Circle()
                    .fill(color)
                    .frame(width: circleWidth)
                    .opacity(0.5)
                    .onAppear {
                        withAnimation(Animation.easeInOut(duration: 2).repeatForever(autoreverses: true)) {
                            circleWidth *= 1.1
                        }
                    }
                Text(emoji)
                    .font(.system(size: 40))
            }
        }
    }
    
    var body: some View {
        Text("Messages View")
    }
}

#Preview {
    MessagesView()
}
