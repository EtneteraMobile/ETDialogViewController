//
//  ButtonTitleConfig.swift
//  ETDialogViewController-iOS
//
//  Created by Beles on 17/08/2018.
//  Copyright © 2018 Etnetera a.s. All rights reserved.
//

import Foundation
import UIKit

public enum ButtonTitleFont {
    case normal
    case preferred
    case destructive
    case custom(value: UIFont)

    public var value: UIFont {
        switch self {
        case .normal:
            return UIFont.systemFont(ofSize: 16)
        case .preferred:
            return UIFont.boldSystemFont(ofSize: 16)
        case .destructive:
            return UIFont.boldSystemFont(ofSize: 16)
        case.custom(let value):
            return value
        }
    }
}

public enum ButtonTitleColor {
    case normal
    case preferred
    case destructive
    case custom(value: UIColor)

    public var value: UIColor {
        switch self {
        case .normal:
            return UIView().tintColor
        case .preferred:
            return UIView().tintColor
        case .destructive:
            return .red
        case .custom(let value):
            return value
        }
    }
}

public class ButtonTitleConfig {
    public let font: ButtonTitleFont
    public let color: ButtonTitleColor

    public init(font: ButtonTitleFont, color: ButtonTitleColor) {
        self.font = font
        self.color = color
    }
}
