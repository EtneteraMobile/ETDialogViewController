//
//  DialogStyleConfig.swift
//  ETDialogViewController-iOS
//
//  Created by Beles on 17/08/2018.
//  Copyright © 2018 Etnetera a.s. All rights reserved.
//

import Foundation
import UIKit

public class DialogStyleConfig {

    // MARK: - Variables

    // MARK: public

    public let backgroundColor: UIColor
    public let opacity: Float
    public let minContainerSize: CGSize
    public let maxContainerSize: CGSize
    public let cornerRadius: CGFloat
    public let blurEffect: UIVisualEffect?
    public let titleStyle: DialogTitleStyleConfig
    public let buttonStyle: ButtonStyleConfig

    // MARK: - Initialization

    public init(backgroundColor: UIColor = .white,
                opacity: Float = 0.9,
                cornerRadius: CGFloat = 10,
                minContainerSize: CGSize = CGSize(width: 100, height: 100),
                maxContainerSize: CGSize = CGSize(width: UIScreen.main.bounds.width - 30,
                                                  height: UIScreen.main.bounds.height - 50),
                blurEffect: UIBlurEffect? = UIBlurEffect(style: .dark),
                titleStyle: DialogTitleStyleConfig = DialogTitleStyleConfig(),
                buttonStyle: ButtonStyleConfig = ButtonStyleConfig()) {
        self.backgroundColor = backgroundColor
        self.opacity = opacity
        self.cornerRadius = cornerRadius
        self.minContainerSize = minContainerSize
        self.maxContainerSize = maxContainerSize
        self.blurEffect = blurEffect
        self.titleStyle = titleStyle
        self.buttonStyle = buttonStyle
    }
}
