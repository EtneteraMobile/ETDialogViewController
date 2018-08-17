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
    public let borderColor: UIColor
    public let normalStyle: ButtonTitleConfig
    public let preferredStyle: ButtonTitleConfig
    public let destructiveStyle: ButtonTitleConfig

    public init(backgroundColor: UIColor = .white,
                normalStyle: ButtonTitleConfig = ButtonTitleConfig(font: .normal, color: .normal),
                preferredStyle: ButtonTitleConfig = ButtonTitleConfig(font: .preferred, color: .preferred),
                destructiveStyle: ButtonTitleConfig = ButtonTitleConfig(font: .destructive, color: .destructive),
                borderColor: UIColor = .gray) {
        self.backgroundColor = backgroundColor
        self.borderColor = borderColor
        self.normalStyle = normalStyle
        self.preferredStyle = preferredStyle
        self.destructiveStyle = destructiveStyle
    }
}
