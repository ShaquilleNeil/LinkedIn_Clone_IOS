//
//  TabScreen.swift
//  LinkedIn_clone
//
//  Created by Shaquille O Neil on 2025-10-05.
//

import SwiftUI

struct TabScreen: View {
    var body: some View {
        TabView {
            HomeScreen()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            MyNetworkScreen()
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("My Network")
                }
            PostScreen()
                .tabItem {
                    Image(systemName: "square.and.arrow.up.on.square")
                    Text("Post")
                }
            NotificationScreen()
                .tabItem {
                    Image(systemName: "bell.fill")
                    Text("Notifications")
                }
            JobScreen()
                .tabItem {
                    Image(systemName: "briefcase.fill")
                    Text("Jobs")
                }
        }
    }
}

#Preview {
    TabScreen()
}
