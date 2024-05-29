//
//  ProfileHeader.swift
//  TikTokCloneSwiftUI.git
//
//  Created by Oleksandr Isaiev on 28.05.2024.
//

import SwiftUI

struct ProfileHeader: View {
    var body: some View {
        VStack(spacing: 16) {
            VStack(spacing: 8) {
                CircularProfileImage(profileImageUrl: nil, size: .xLarge)

                Text("@lewis.duis")
                    .font(.subheadline)
                    .fontWeight(.semibold)
            }

            // stats view
            HStack(spacing: 16) {
                UserStat(value: "5", title: "Following")
                UserStat(value: "2", title: "Followers")
                UserStat(value: "7", title: "Likes")
            }

            // action button

            Button {

            } label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 32)
                    .foregroundStyle(.black)
                    .background(Color(.systemGray6))
                    .clipShape(RoundedRectangle(cornerRadius: 6))
            }

            Divider()
        }
    }
}

#Preview {
    ProfileHeader()
}
