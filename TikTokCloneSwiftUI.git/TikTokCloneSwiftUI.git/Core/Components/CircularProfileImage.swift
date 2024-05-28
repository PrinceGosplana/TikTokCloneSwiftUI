//
//  CircularProfileImage.swift
//  TikTokCloneSwiftUI.git
//
//  Created by Oleksandr Isaiev on 28.05.2024.
//

import SwiftUI

enum ProfileImageSize {
    case xxSmall
    case xSmall
    case small
    case medium
    case large
    case xLarge

    var dimension: CGFloat {
        switch self {
        case .xxSmall: return 28
        case .xSmall: return 32
        case .small: return 40
        case .medium: return 48
        case .large: return 64
        case .xLarge: return 80
        }
    }
}

struct CircularProfileImage: View {

    let profileImageUrl: String?
    let size: ProfileImageSize

    var body: some View {
        if let profileImageUrl {
            Image(profileImageUrl)
                .resizable()
                .scaledToFill()
                .frame(width: size.dimension, height: size.dimension)
                .clipShape(Circle())
        } else {
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFill()
                .frame(width: size.dimension, height: size.dimension)
                .clipShape(Circle())
                .foregroundStyle(Color(.systemGray4))
        }
    }
}

#Preview {
    CircularProfileImage(profileImageUrl: nil, size: .xLarge)
}
