//
//  StandardTextFieldModifier.swift
//  TikTokCloneSwiftUI.git
//
//  Created by Oleksandr Isaiev on 01.06.2024.
//

import SwiftUI

struct StandardTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding(.horizontal, 24)
    }
}
