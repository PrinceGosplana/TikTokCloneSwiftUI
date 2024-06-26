//
//  CustomVideoPlayer.swift
//  TikTokCloneSwiftUI.git
//
//  Created by Oleksandr Isaiev on 30.05.2024.
//

import AVKit
import SwiftUI

struct CustomVideoPlayer: UIViewControllerRepresentable {

    var player: AVPlayer

    func makeUIViewController(context: Context) -> UIViewController {
        let controller = AVPlayerViewController()
        controller.player = player
        controller.showsPlaybackControls = false
        controller.exitsFullScreenWhenPlaybackEnds = true
        controller.allowsPictureInPicturePlayback = true
        controller.videoGravity = .resizeAspectFill
        return controller
    }

    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {

    }
}
