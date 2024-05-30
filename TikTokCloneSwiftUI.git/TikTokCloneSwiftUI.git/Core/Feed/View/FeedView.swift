//
//  FeedView.swift
//  TikTokCloneSwiftUI.git
//
//  Created by Oleksandr Isaiev on 26.05.2024.
//

import SwiftUI

struct FeedView: View {
    
    @StateObject var viewModel = FeedViewModel()

    var body: some View {
        ScrollView {
            LazyVStack(spacing: 0) {
                ForEach(viewModel.posts) { post in
                    FeedCell(post: post)
                }
            }
            .scrollTargetLayout()
        }
        .scrollTargetBehavior(.paging)
        .ignoresSafeArea()
    }
}

#Preview {
    FeedView()
}
