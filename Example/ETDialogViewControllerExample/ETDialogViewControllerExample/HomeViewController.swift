//
//  HomeViewController.swift
//  ETDialogViewControllerExample
//
//  Created by Beles on 17/08/2018.
//  Copyright © 2018 Beles. All rights reserved.
//

import Foundation
import UIKit

class HomeViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .cyan

        let square1 = UIView()
        square1.backgroundColor = .brown
        square1.frame = CGRect(x: 50, y: 50, width: 200, height: 200)
        view.addSubview(square1)

        let square2 = UIView()
        square2.backgroundColor = .red
        square2.frame = CGRect(x: 200, y: 350, width: 200, height: 200)
        view.addSubview(square2)
    }
}
