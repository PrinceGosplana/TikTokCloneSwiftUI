//
//  CurrentUserProfileView.swift
//  TikTokCloneSwiftUI.git
//
//  Created by Oleksandr Isaiev on 28.05.2024.
//

import SwiftUI

struct CurrentUserProfileView: View {

    let authService: AuthServiceProtocol

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 2) {
                    // profile header
                    ProfileHeader()
                    // post grid view

                    PostGrid()
                }
                .padding(.top)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Sign Out") {
                        Task { await authService.signOut() }
                    }
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .tint(.black)
                }
            }
        }
    }
}

#Preview {
    CurrentUserProfileView(authService: MockAuthService())
}
