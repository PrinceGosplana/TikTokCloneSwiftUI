//
//  ContentView.swift
//  TikTokCloneSwiftUI.git
//
//  Created by Oleksandr Isaiev on 25.05.2024.
//

import SwiftUI

struct ContentView: View {

    @StateObject var viewModel: ContentViewModel
    private let authService: AuthServiceProtocol

    init(authService: AuthServiceProtocol) {
        _viewModel = StateObject(wrappedValue: ContentViewModel(authService: authService))
        self.authService = authService
    }

    var body: some View {
        Group {
            if viewModel.userSession != nil {
                MainTabView(authService: authService)
            } else {
                LoginView()
            }
        }
    }
}

#Preview {
    ContentView(authService: MockAuthService())
}
