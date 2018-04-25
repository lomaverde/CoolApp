//
//  Font+MY.swift
//  CoolApp
//
//  Created by Mei Yu on 4/23/18.
//  Copyright © 2018 Mei. All rights reserved.
//

import Foundation
import UIKit

extension UIFont {

    static let kDefaultFontSize: CGFloat = 12

    static func tabBarFont(withSize size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: 10)
    }

    static func defaultFont(withSize size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size)
    }

    static func defaultFontBold(withSize size: CGFloat) -> UIFont {
        return UIFont.boldSystemFont(ofSize: size)
    }

    static func defaultFontItalics(withSize size: CGFloat) -> UIFont {
        return UIFont.italicSystemFont(ofSize: size)
    }
}
