//
//  AppIcon.swift
//  SwiftApp
//
//  Created by Konstantin Mishukov on 05.02.2023.
//

import UIKit

enum AppIcon: CaseIterable {
    case standard
    case green
    case blue

    var assetName: String? {
        switch self {
        case .standard:
            return nil
        case .green:
            return "AppIconGreen"
        case .blue:
            return "AppIconBlue"
        }
    }

    var image: UIImage? {
        UIImage(named: assetName ?? "AppIcon")
    }
}

