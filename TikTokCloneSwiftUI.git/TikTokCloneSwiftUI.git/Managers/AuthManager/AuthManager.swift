//
//  AuthManager.swift
//  TikTokCloneSwiftUI.git
//
//  Created by Oleksandr Isaiev on 03.06.2024.
//

import Foundation

final class AuthManager {

    private let authService: AuthServiceProtocol
    @Published var userSession: String?

    init(authService: AuthServiceProtocol) {
        self.authService = authService
    }

    func login(withEmail email: String, password: String) async {
        Task {
            do {
            let userSession = try await authService.login(withEmail: email, password: password)
                await MainActor.run {
                    self.userSession = userSession
                }
            } catch {
                print("Failed to log in user with error \(error.localizedDescription)")
            }
        }
    }

    func createUser(withEmail email: String, password: String, userName: String, fullName: String) async {
        Task {
            do {
                let userSession = try await authService.createUser(withEmail: email, password: password, userName: userName, fullName: fullName)
                await MainActor.run {
                    self.userSession = userSession
                }
            } catch {
                print("Failed to create user with error \(error.localizedDescription)")
            }
        }
    }

    func signOut() async {
        userSession = nil
    }
}
