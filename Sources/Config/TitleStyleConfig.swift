//
//  TitleStyleConfig.swift
//  ETDialogViewController-iOS
//
//  Created by Beles on 17/08/2018.
//  Copyright © 2018 Etnetera a.s. All rights reserved.
//

import Foundation
import UIKit

public class TitleStyleConfig {
    public let font: UIFont
    public let color: UIColor

    public init(font: UIFont = UIFont.boldSystemFont(ofSize: 18), color: UIColor = .black) {
        self.font = font
        self.color = color
    }
}
