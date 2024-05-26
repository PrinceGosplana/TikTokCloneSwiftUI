//
//  MainTabView.swift
//  TikTokCloneSwiftUI.git
//
//  Created by Oleksandr Isaiev on 26.05.2024.
//

import SwiftUI

enum SelectedTab: Int {
    case feed, friends, upload, notifications, profile
}

struct MainTabView: View {

    @State private var selectedTab: SelectedTab = .feed

    var body: some View {
        TabView {
            Text("Feed")
                .tabItem {
                    Image(systemName: selectedTab == .feed ? "house.fill" : "house")
                        .environment(\.symbolVariants, selectedTab == .feed ? .fill : .none)
                    Text("Home")
                }
                .onAppear { selectedTab = .feed }
                .tag(SelectedTab.feed)

            Text("Friends")
                .tabItem {
                    Image(systemName: selectedTab == .friends ? "person.2.fill" : "person.2")
                        .environment(\.symbolVariants, selectedTab == .friends ? .fill : .none)
                    Text("Friends")
                }
                .onAppear { selectedTab = .friends }
                .tag(SelectedTab.friends)

            Text("Uploading Post")
                .tabItem {
                    Image(systemName: "plus")
                }
                .onAppear { selectedTab = .upload }
                .tag(SelectedTab.upload)

            Text("Notifications")
                .tabItem {
                    Image(systemName: selectedTab == .notifications ? "heart.fill" : "heart")
                        .environment(\.symbolVariants, selectedTab == .notifications ? .fill : .none)
                    Text("Home")
                }
                .onAppear { selectedTab = .notifications }
                .tag(SelectedTab.notifications)

            Text("Profile")
                .tabItem {
                    Image(systemName: selectedTab == .profile ? "person.fill" : "person")
                        .environment(\.symbolVariants, selectedTab == .profile ? .fill : .none)
                    Text("Home")
                }
                .onAppear { selectedTab = .profile }
                .tag(SelectedTab.profile)
        }
        .tint(.black)
    }
}

#Preview {
    MainTabView()
}
