//
//  CustomTabBarView.swift
//  pinpals-ios
//
//  Created by Noah Bailey on 7/12/24.
//

import SwiftUI

struct CustomTabBarView: View {
    
    let tabs: Array<TabBarItem>
    @Binding var selection: TabBarItem

    var body: some View {
        HStack {
            ForEach(tabs, id: \.self) { tab in
                tabView(tab: tab)
                    .onTapGesture {
                        switchToTab(tab: tab)
                    }
            }
        }
        .padding(6)
        .background(Color.white.ignoresSafeArea(edges: .bottom))
        
    }
}

extension CustomTabBarView {
    private func tabView(tab: TabBarItem) -> some View {
        VStack {
            Image(systemName: tab.iconName)
            Text(tab.title)
                .font(.system(size: 10, weight: .semibold, design: .rounded))
        }
        .foregroundColor(selection == tab ? tab.color : Color.gray)
        .padding(.vertical, 8)
        .frame(maxWidth: .infinity)
        .background(selection == tab ? Color.pinpalsBackground.opacity(0.2) : Color.clear)
        .cornerRadius(10)
    }
    
    private func switchToTab(tab: TabBarItem) {
        withAnimation(.easeInOut) {
            selection = tab
        }
    }
}

struct TabBarItem: Hashable {
    let iconName: String
    let title: String
    let color: Color
}



struct CustomTabBarView_Previews: PreviewProvider {
    
    static let tabs: Array<TabBarItem> = [
        TabBarItem(iconName: "mappin.and.ellipse", title: "Host", color: Color.pinpalsPrimary),
        TabBarItem(iconName: "magnifyingglass", title: "Find", color: Color.pinpalsPrimary),
        TabBarItem(iconName: "map", title: "Map", color: Color.pinpalsPrimary),
        TabBarItem(iconName: "envelope", title: "Messages", color: Color.pinpalsPrimary),
        TabBarItem(iconName: "person", title: "Profile", color: Color.pinpalsPrimary)
    ]
    
    static var previews: some View {
        VStack {
            Spacer()
            CustomTabBarView(tabs: tabs, selection: .constant(tabs.first!))
        }
    }
}
