//
//  AuthServiceProtocol.swift
//  TikTokCloneSwiftUI.git
//
//  Created by Oleksandr Isaiev on 02.06.2024.
//

import Foundation

protocol AuthServiceProtocol: AnyActor {
    func updateUserSession() async -> String?
    func login(withEmail email: String, password: String) async throws
    func createUser(withEmail email: String, password: String, userName: String, fullName: String) async throws
    func signOut() async
}
