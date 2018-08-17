//
//  StyleConfig.swift
//  ETDialogViewController-iOS
//
//  Created by Beles on 17/08/2018.
//  Copyright © 2018 Etnetera a.s. All rights reserved.
//

import Foundation
import UIKit

public class StyleConfig {

    // MARK: - Variables

    // MARK: public

    public let backgroundColor: UIColor
    public let minContainerSize: CGSize
    public let maxContainerSize: CGSize
    public let cornerRadius: CGFloat
    public let blurEffect: UIVisualEffect?

    // MARK: - Initialization

    public init(backgroundColor: UIColor,
                cornerRadius: CGFloat = 0,
                minContainerSize: CGSize = CGSize(width: 100, height: 100),
                maxContainerSize: CGSize = CGSize(width: UIScreen.main.bounds.width - 30,
                                                  height: UIScreen.main.bounds.height - 30),
                blurEffect: UIBlurEffect? = nil) {
        self.backgroundColor = backgroundColor
        self.cornerRadius = cornerRadius
        self.minContainerSize = minContainerSize
        self.maxContainerSize = maxContainerSize
        self.blurEffect = blurEffect
    }
}
