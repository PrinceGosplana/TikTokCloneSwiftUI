//
//  NotificationsView.swift
//  TikTokCloneSwiftUI.git
//
//  Created by Oleksandr Isaiev on 27.05.2024.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 12) {
                    ForEach(1...10, id: \.self) { notification in
                        Text("Placeholder \(notification)")
                            .padding()
                    }
                }
            }
            .navigationTitle("Notifications")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    NotificationsView()
}
