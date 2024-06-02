//
//  LoginViewModel.swift
//  TikTokCloneSwiftUI.git
//
//  Created by Oleksandr Isaiev on 02.06.2024.
//

import Foundation

final class LoginViewModel: ObservableObject {
    
    private let authService: AuthServiceProtocol

    init(authService: AuthServiceProtocol) {
        self.authService = authService
    }

    func login(withEmail email: String, password: String) async {
        do {
            try await authService.login(withEmail: email, password: password)
        } catch {
            print("Did fail to log in with error \(error.localizedDescription)")
        }
    }
}
