//
//  ContentViewModel.swift
//  TikTokCloneSwiftUI.git
//
//  Created by Oleksandr Isaiev on 03.06.2024.
//

import Foundation

final class ContentViewModel: ObservableObject {

    @Published var userSession: String?
    private let authService: AuthServiceProtocol

    init(authService: AuthServiceProtocol) {
        self.authService = authService
        setupSubscribers()
    }

    private func setupSubscribers() {
        Task {
            let userSession = await authService.updateUserSession()
            await MainActor.run {
                self.userSession = userSession
            }
        }
    }

}
