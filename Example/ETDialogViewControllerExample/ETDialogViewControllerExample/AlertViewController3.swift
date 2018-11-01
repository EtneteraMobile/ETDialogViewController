//
//  AlertViewController3.swift
//  ETDialogViewControllerExample
//
//  Created by Beles on 30/08/2018.
//  Copyright © 2018 Beles. All rights reserved.
//

import UIKit
import ETDialogViewController

class AlertViewController3: DialogViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setupContent()
    }

    private func setupContent() {
        let content: () -> UIView = {
            let textView = UITextView()
            textView.isScrollEnabled = false
            textView.isEditable = false
            textView.textAlignment = .left
            textView.backgroundColor = .clear
            textView.font = UIFont.systemFont(ofSize: 14)
            textView.textColor = UIColor(red: 148/255, green: 140/255, blue: 117/255, alpha: 1)
            textView.text = """
            Your Content
            In these Website Standard Terms and Conditions, “Your Content” shall mean any audio, video text, images or other material you choose to display on this Website. By displaying Your Content, you grant Company Name a non-exclusive, worldwide irrevocable, sub licensable license to use, reproduce, adapt, publish, translate and distribute it in any and all media.
            """
            return textView
        }

        let button1 = DialogButtonConfig(title: "Button 1", style: .preferred, enabled: true) {
            print("clicked on button")
        }
        let button2 = DialogButtonConfig(title: "Button 2", style: .normal, enabled: true) {
            print("clicked on button")
        }
        let button3 = DialogButtonConfig(title: "Button 3 trochu delší", style: .destructive, enabled: true) {
            print("clicked on button")
        }
        let button4 = DialogButtonConfig(title: "Button 4", style: .normal, enabled: true) {
            print("clicked on button")
        }

        let config = DialogConfig(title: "Super dlouhy title bla bla ble ble hahaha je to super", content: content, buttons: [button1, button2, button3, button4])
        update(with: config)
    }
}
