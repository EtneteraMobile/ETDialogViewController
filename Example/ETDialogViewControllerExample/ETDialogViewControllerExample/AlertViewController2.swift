//
//  AlertViewController2.swift
//  ETDialogViewControllerExample
//
//  Created by Beles on 30/08/2018.
//  Copyright © 2018 Beles. All rights reserved.
//

import UIKit
import ETDialogViewController

class AlertViewController2: DialogViewController {
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
            textView.textColor = UIColor(red: 201/255, green: 214/255, blue: 229/255, alpha: 1)
            textView.text = """
            Your Content
            In these Website Standard Terms and Conditions, “Your Content” shall mean any audio, video text, images or other material you choose to display on this Website. By displaying Your Content, you grant Company Name a non-exclusive, worldwide irrevocable, sub licensable license to use, reproduce, adapt, publish, translate and distribute it in any and all media.

            Your Content must be your own and must not be invading any third-party's rights. Company Name reserves the right to remove any of Your Content from this Website at any time without notice.

            No warranties
            This Website is provided “as is,” with all faults, and Company Name express no representations or warranties, of any kind related to this Website or the materials contained on this Website. Also, nothing contained on this Website shall be interpreted as advising you.

            Limitation of liability
            In no event shall Company Name, nor any of its officers, directors and employees, shall be held liable for anything arising out of or in any way connected with your use of this Website whether such liability is under contract.  Company Name, including its officers, directors and employees shall not be held liable for any indirect, consequential or special liability arising out of or in any way related to your use of this Website.

            Indemnification
            You hereby indemnify to the fullest extent Company Name from and against any and/or all liabilities, costs, demands, causes of action, damages and expenses arising in any way related to your breach of any of the provisions of these Terms.
            """
            return textView
        }
        let accept = DialogButtonConfig(title: "Accept", style: .preferred, enabled: true) {
            print("clicked on button")
        }
        let decline = DialogButtonConfig(title: "Decline", style: .normal, enabled: true) {
            print("clicked on button")
        }

        let config = DialogConfig(title: "Terms and Conditions", content: content, buttons: [decline, accept])
        update(with: config)
    }
}
