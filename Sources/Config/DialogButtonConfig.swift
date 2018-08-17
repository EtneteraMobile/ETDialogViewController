//
//  DialogButtonConfig.swift
//  ETDialogViewController-iOS
//
//  Created by Beles on 17/08/2018.
//  Copyright © 2018 Etnetera a.s. All rights reserved.
//

import Foundation

public class DialogButtonConfig {
    public let title: String
    public let preferred: Bool
    public let enabled: Bool
    public let onPress: () -> Void

    public init(title: String, preferred: Bool, enabled: Bool, onPress: @escaping () -> Void) {
        self.title = title
        self.preferred = preferred
        self.enabled = enabled
        self.onPress = onPress
    }
}
