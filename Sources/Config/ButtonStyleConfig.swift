//
//  ButtonStyleConfig.swift
//  ETDialogViewController-iOS
//
//  Created by Beles on 17/08/2018.
//  Copyright © 2018 Etnetera a.s. All rights reserved.
//

import Foundation
import UIKit

public class ButtonStyleConfig {
    public let backgroundColor: UIColor
    public let titleColor: UIColor
    public let preferredColor: UIColor
    public let destructiveColor: UIColor
    public let borderColor: UIColor
    public let titleFont: UIFont
    public let preferredFont: UIFont
    public let destructiveFont: UIFont

    public init(backgroundColor: UIColor = .white,
                titleColor: UIColor = UIView().tintColor,
                preferredColor: UIColor = UIView().tintColor,
                destructiveColor: UIColor = .red,
                borderColor: UIColor = .gray,
                titleFont: UIFont = UIFont.systemFont(ofSize: 16),
                preferredFont: UIFont = UIFont.boldSystemFont(ofSize: 16),
                destructiveFont: UIFont = UIFont.boldSystemFont(ofSize: 16)) {
        self.backgroundColor = backgroundColor
        self.titleFont = titleFont
        self.titleColor = titleColor
        self.preferredColor = preferredColor
        self.destructiveColor = destructiveColor
        self.borderColor = borderColor
        self.preferredFont = preferredFont
        self.destructiveFont = destructiveFont
    }
}
