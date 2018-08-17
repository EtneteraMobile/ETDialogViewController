//
//  DialogConfig.swift
//  ETDialogViewController-iOS
//
//  Created by Beles on 17/08/2018.
//  Copyright © 2018 Etnetera a.s. All rights reserved.
//

import Foundation
import UIKit

public class DialogConfig {
    public var title: String
    public var content: () -> UIView
    public var buttons: [DialogButtonConfig]

    public init(title: String, content: @escaping () -> UIView, buttons: [DialogButtonConfig]) {
        self.title = title
        self.content = content
        self.buttons = buttons
    }
}
