//
//  UserStat.swift
//  TikTokCloneSwiftUI.git
//
//  Created by Oleksandr Isaiev on 28.05.2024.
//

import SwiftUI

struct UserStat: View {

    let value: String
    let title: String

    var body: some View {
        VStack {
            Text(value)
                .font(.subheadline)
                .fontWeight(.bold)

            Text(title)
                .font(.caption)
                .foregroundStyle(.gray)
        }
        .frame(width: 80, alignment: .center)
    }
}

#Preview {
    UserStat(value: "7", title: "Followers")
}
