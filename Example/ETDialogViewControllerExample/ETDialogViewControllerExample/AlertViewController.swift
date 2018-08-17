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
            textView.isScrollEnabled = false
            textView.isEditable = false
            textView.textAlignment = .center
            textView.text = """
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque rhoncus viverra suscipit. Nam tempus faucibus ligula ut porta. Vivamus a pharetra eros, in dictum orci. Sed vel porta turpis.
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque rhoncus viverra suscipit. Nam tempus faucibus ligula ut porta. Vivamus a pharetra eros, in dictum orci. Sed vel porta turpis.
"""
            return textView
        }
        let closeButton = DialogButtonConfig(title: "OK", style: .preferred, enabled: true) {
            print("clicked on button")
        }
        let cancelButton = DialogButtonConfig(title: "Cancel button", style: .normal, enabled: true) {
            print("clicked on button")
        }
        let destructiveButton = DialogButtonConfig(title: "Remove button long text", style: .destructive, enabled: true) {
            print("clicked on button")
        }
        let config = DialogConfig(title: "Testuju trochu delší nadpis 🧐", content: content, buttons: [closeButton, cancelButton, destructiveButton])
        update(with: config)
    }
}

