//
//  AuthService.swift
//  TikTokCloneSwiftUI.git
//
//  Created by Oleksandr Isaiev on 02.06.2024.
//

import Foundation

actor AuthService: AuthServiceProtocol {

    func updateUserSession() async -> String? {
        UUID().uuidString
    }
    
    func login(withEmail email: String, password: String) async throws {
        do {

        } catch {
            print("Failed to log in user with error \(error.localizedDescription)")
            throw error
        }
    }
    
    func createUser(withEmail email: String, password: String, userName: String, fullName: String) async throws {
        do {
            
        } catch {
            print("Failed to create user with error \(error.localizedDescription)")
            throw error
        }
    }

    func signOut() async {
        
    }
}
