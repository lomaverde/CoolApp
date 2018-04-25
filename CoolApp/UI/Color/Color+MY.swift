//
//  Color+MY.swift
//  CoolApp
//
//  Created by Mei Yu on 4/24/18.
//  Copyright © 2018 Mei. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {

    static func hexStringToUIColor (hex:String) -> UIColor {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()

        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }

        if ((cString.count) != 6) {
            return UIColor.gray
        }

        var rgbValue:UInt32 = 0
        Scanner(string: cString).scanHexInt32(&rgbValue)

        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }

    static var appTextDark: UIColor {
        return hexStringToUIColor(hex: "0x4D4F54")
    }

    static var appTintRed: UIColor {
        return hexStringToUIColor(hex: "0xEE3366")
    }

    static var barTextUnselected: UIColor {
        return UIColor.appSecondaryTint
    }

    static var appSecondaryTint: UIColor {
        return UIColor.gray
    }

    static var lightBackgroundTint: UIColor {
        return hexStringToUIColor(hex: "0x8E9094")
    }

    static var lineSeparator: UIColor {
        return hexStringToUIColor(hex: "0xBABBBF")
    }
}
