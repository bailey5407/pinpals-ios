//
//  PinView.swift
//  pinpals-ios
//
//  Created by Noah Bailey on 7/17/24.
//

import SwiftUI

struct PinView: View {
    
    let color: Color
    let emoji: String
    @State var expanded: Bool = false
    
    @State var circleWidth: CGFloat = 60
    let rectWidth: CGFloat = 60
    
    init(_ emoji: String, color: Color){
        self.emoji = emoji
        self.color = color
    }
    
    var body: some View {
        ZStack{
            if(expanded){
                Rectangle()
                    .fill(color)
                    .frame(width: rectWidth, height: rectWidth)
                    .opacity(0.5)
            }
            else {
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
}

#Preview {
    PinView("🤧", color: .red)
}
