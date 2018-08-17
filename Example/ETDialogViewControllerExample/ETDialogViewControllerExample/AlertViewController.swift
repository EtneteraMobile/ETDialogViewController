//
//  AlertViewController.swift
//  ETDialogViewControllerExample
//
//  Created by Beles on 17/08/2018.
//  Copyright © 2018 Beles. All rights reserved.
//

import UIKit
import ETDialogViewController

class AlertViewController: DialogViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setupContent()
    }

    private func setupContent() {
        let content: () -> UIView = {
            let textView = UITextView()
            textView.isSelectable = false
            textView.isScrollEnabled = false
            textView.isEditable = false
            textView.text = """
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque rhoncus viverra suscipit. Nam tempus faucibus ligula ut porta. Vivamus a pharetra eros, in dictum orci. Sed vel porta turpis. Pellentesque venenatis augue eros, in mollis eros fringilla non. Duis in feugiat eros, quis auctor purus. Proin aliquet ultrices facilisis. Sed lacinia tortor ipsum, in elementum massa euismod ut. Pellentesque in mi ultricies, commodo dolor ut, cursus tellus. Fusce pretium leo condimentum porta pulvinar.

            Donec vel euismod turpis. Proin gravida a massa eu consequat. Nullam malesuada pharetra augue, id consectetur ex sollicitudin eu. Aliquam feugiat, libero a tempus rutrum, neque dui euismod ante, non congue justo nulla at arcu. Aenean vestibulum nisl elit, in ultrices est pharetra tincidunt. Nam sodales sed dolor vel tempus. Vivamus nec nunc blandit, luctus ex sit amet, congue massa. Donec interdum tortor sit amet ultrices hendrerit. Curabitur tincidunt interdum ornare. Morbi hendrerit maximus ex, eu ullamcorper odio lacinia vel. Nullam commodo sem augue, ac sodales velit venenatis nec. Cras non porttitor justo, id ultricies diam. Maecenas a posuere enim. Fusce egestas quis leo eget elementum. Mauris vel nulla dui.

            Nullam nulla nunc, condimentum at elementum ut, sodales non augue. In porta commodo est. Duis eget quam urna. Etiam non pulvinar felis, eget varius nulla. Donec vel pharetra urna, sit amet semper diam. Praesent varius elit purus, non convallis sem sollicitudin vel. Fusce ut eleifend urna, eu mattis enim. Quisque venenatis enim eget tincidunt eleifend. Duis in interdum lacus.
"""
            return textView
        }
        let closeButton = DialogButtonConfig(title: "Close", preferred: true, enabled: true) {
            print("clicked on button")
        }
        let cancelButton = DialogButtonConfig(title: "Cancel", preferred: false, enabled: true) {
            print("clicked on button")
        }
        let config = DialogConfig(title: "Testuju trochu delší nadpis", content: content, buttons: [closeButton, cancelButton])
        update(with: config)
    }
}

