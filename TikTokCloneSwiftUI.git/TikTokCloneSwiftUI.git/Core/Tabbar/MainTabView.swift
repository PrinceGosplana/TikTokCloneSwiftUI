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
    private let authService: AuthServiceProtocol

    init(authService: AuthServiceProtocol) {
        self.authService = authService
    }

    var body: some View {
        TabView {
            FeedView()
                .tabItem {
                    Image(systemName: selectedTab == .feed ? "house.fill" : "house")
                        .environment(\.symbolVariants, selectedTab == .feed ? .fill : .none)
                    Text("Home")
                }
                .onAppear { selectedTab = .feed }
                .tag(SelectedTab.feed)

            ExploreView()
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

            NotificationsView()
                .tabItem {
                    Image(systemName: selectedTab == .notifications ? "heart.fill" : "heart")
                        .environment(\.symbolVariants, selectedTab == .notifications ? .fill : .none)
                    Text("Home")
                }
                .onAppear { selectedTab = .notifications }
                .tag(SelectedTab.notifications)

            CurrentUserProfileView(authService: authService)
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
    MainTabView(authService: MockAuthService())
}
