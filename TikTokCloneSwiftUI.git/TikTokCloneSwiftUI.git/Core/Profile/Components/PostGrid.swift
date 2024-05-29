//
//  PostGrid.swift
//  TikTokCloneSwiftUI.git
//
//  Created by Oleksandr Isaiev on 29.05.2024.
//

import SwiftUI

struct PostGrid: View {
    
    private let items = Array(repeating: GridItem(.flexible(), spacing: 1), count: 3)

    private var width: CGFloat {
        ((UIScreen.current?.bounds.width ?? 0) / 3) - 2
    }

    var body: some View {
        LazyVGrid(columns: items, spacing: 2) {
            ForEach(0 ..< 36) { post in
                Rectangle()
                    .frame(width: width, height: 160)
                    .clipped()
            }
        }
    }
}

#Preview {
    PostGrid()
}
