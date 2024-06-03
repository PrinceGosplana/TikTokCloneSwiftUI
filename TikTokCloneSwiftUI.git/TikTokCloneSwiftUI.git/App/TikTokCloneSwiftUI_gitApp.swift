//
//  TikTokCloneSwiftUI_gitApp.swift
//  TikTokCloneSwiftUI.git
//
//  Created by Oleksandr Isaiev on 25.05.2024.
//

import SwiftUI

@main
struct TikTokCloneSwiftUI_gitApp: App {

    private let authService = AuthService()

    var body: some Scene {
        WindowGroup {
            ContentView(authService: authService)
        }
    }
}
