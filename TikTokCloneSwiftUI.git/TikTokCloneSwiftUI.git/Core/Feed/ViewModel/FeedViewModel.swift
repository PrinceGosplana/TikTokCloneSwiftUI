//
//  FeedViewModel.swift
//  TikTokCloneSwiftUI.git
//
//  Created by Oleksandr Isaiev on 30.05.2024.
//

import Foundation

final class FeedViewModel: ObservableObject {

    @Published var posts = [Post]()

    let videoUrls = [
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4"
    ]

    init() {
        fetchPosts()
    }

    private func fetchPosts() {
        posts = [
            .init(id: UUID().uuidString, videoUrl: videoUrls[0]),
            .init(id: UUID().uuidString, videoUrl: videoUrls[1]),
            .init(id: UUID().uuidString, videoUrl: videoUrls[2]),
            .init(id: UUID().uuidString, videoUrl: videoUrls[3])
        ]
    }
}
