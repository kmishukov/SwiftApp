//
//  IconManager.swift
//  SwiftApp
//
//  Created by Konstantin Mishukov on 05.02.2023.
//

import UIKit

final class IconManager {
    static var currentIcon: AppIcon {
        AppIcon.allCases.first(where: { $0.assetName == UIApplication.shared.alternateIconName }) ?? .standard
    }

    static func setIcon(_ icon: AppIcon, completion: ((Bool) -> Void)? = nil) {
        guard
            currentIcon != icon,
            UIApplication.shared.supportsAlternateIcons
        else {
            return
        }

        UIApplication.shared.setAlternateIconName(icon.assetName) { error in
            if let error = error {
                print("Error setting alternate icon \"\(icon.assetName ?? "")\": \(error.localizedDescription)")
            }
            completion?(error != nil)
        }
    }
}
