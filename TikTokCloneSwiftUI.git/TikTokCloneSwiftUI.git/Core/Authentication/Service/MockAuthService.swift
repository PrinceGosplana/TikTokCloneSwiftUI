//
//  MockAuthService.swift
//  TikTokCloneSwiftUI.git
//
//  Created by Oleksandr Isaiev on 02.06.2024.
//

import Foundation

actor MockAuthService: AuthServiceProtocol {

    func login(withEmail email: String, password: String) async throws {

    }

    func createUser(withEmail email: String, password: String, userName: String, fullName: String) async throws {

    }

    func signOut() async {
        
    }
}
