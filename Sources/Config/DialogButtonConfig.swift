//
//  DialogButtonConfig.swift
//  ETDialogViewController-iOS
//
//  Created by Beles on 17/08/2018.
//  Copyright © 2018 Etnetera a.s. All rights reserved.
//

import Foundation

public enum ButtonStyleType {
    case normal, preferred, destructive
}

public class DialogButtonConfig {
    public let title: String
    public let style: ButtonStyleType
    public let enabled: Bool
    public let onPress: () -> Void

    public init(title: String, style: ButtonStyleType = .normal, enabled: Bool = true, onPress: @escaping () -> Void) {
        self.title = title
        self.style = style
        self.enabled = enabled
        self.onPress = onPress
    }
}
