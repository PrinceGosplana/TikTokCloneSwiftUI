//
//  UserCell.swift
//  TikTokCloneSwiftUI.git
//
//  Created by Oleksandr Isaiev on 27.05.2024.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 48, height: 48)
                .foregroundStyle(Color(.systemGray5))

            VStack(alignment: .leading) {
                Text("test_user")
                    .font(.subheadline)
                    .fontWeight(.semibold)

                Text("Test name")
                    .font(.footnote)
            }

            Spacer()

        }
    }
}

#Preview {
    UserCell()
}
