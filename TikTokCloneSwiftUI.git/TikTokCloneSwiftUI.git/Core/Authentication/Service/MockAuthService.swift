//
//  MockAuthService.swift
//  TikTokCloneSwiftUI.git
//
//  Created by Oleksandr Isaiev on 02.06.2024.
//

import Foundation

actor MockAuthService: AuthServiceProtocol {

    func updateUserSession() async -> String? {
        UUID().uuidString
    }

    func login(withEmail email: String, password: String) async throws -> String? {
        UUID().uuidString
    }

    func createUser(withEmail email: String, password: String, userName: String, fullName: String) async throws -> String? {
        UUID().uuidString
    }

    func signOut() async {}
}
