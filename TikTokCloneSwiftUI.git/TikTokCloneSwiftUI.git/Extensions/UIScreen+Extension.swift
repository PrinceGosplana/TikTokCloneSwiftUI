//
//  UIScreen+Extension.swift
//  TikTokCloneSwiftUI.git
//
//  Created by Oleksandr Isaiev on 29.05.2024.
//

import UIKit

extension UIScreen {
    static var current: UIScreen? {
        UIWindow.current?.screen
    }
}
