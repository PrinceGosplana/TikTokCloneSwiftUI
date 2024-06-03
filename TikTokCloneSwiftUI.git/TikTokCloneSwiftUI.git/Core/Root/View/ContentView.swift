//
//  ContentView.swift
//  TikTokCloneSwiftUI.git
//
//  Created by Oleksandr Isaiev on 25.05.2024.
//

import SwiftUI

struct ContentView: View {

    @StateObject var viewModel = ContentViewModel(authService: AuthService())

    var body: some View {
        Group {
            if viewModel.userSession != nil {
                MainTabView()
            } else {
                LoginView()
            }
        }
    }
}

#Preview {
    ContentView()
}
