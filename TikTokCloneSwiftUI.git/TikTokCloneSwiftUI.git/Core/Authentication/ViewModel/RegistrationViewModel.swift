//
//  RegistrationViewModel.swift
//  TikTokCloneSwiftUI.git
//
//  Created by Oleksandr Isaiev on 02.06.2024.
//

import Foundation

final class RegistrationViewModel: ObservableObject {

    private let authService: AuthServiceProtocol

    init(authService: AuthServiceProtocol) {
        self.authService = authService
    }

    func create(withEmail email: String, password: String, userName: String, fullName: String) async {
        do {
            try await authService.createUser(
                withEmail: email,
                password: password,
                userName: userName,
                fullName: fullName
            )
        } catch {
            print("Did fail to log in with error \(error.localizedDescription)")
        }
    }
}
