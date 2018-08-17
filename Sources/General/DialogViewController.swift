//
//  DialogViewController.swift
//  Etnetera a.s.
//
//  Created by Miroslav Beles on 17/08/2018.
//  Copyright © 2018 Etnetera a.s.. All rights reserved.
//

import Foundation
import UIKit

open class DialogViewController: UIViewController {

    // MARK: - Variables
    // MARK: public
    public let dialogView = UIView()

    // MARK: private
    private let style: DialogStyleConfig
    private let backgroundView: UIVisualEffectView
    private let containerView = UIView()
    private let contentContainerView = UIView()
    private let contentScrollView = UIScrollView()
    private let titleLabel = UILabel()
    private let buttonContainerView = UIView()
    private let contentInsets = UIEdgeInsetsMake(20, 20, 20, 20)
    private let thinLine = 1 / UIScreen.main.scale


    // Mark: - Initialization

    public init(style: DialogStyleConfig) {
        self.style = style
        self.backgroundView = UIVisualEffectView(effect: style.blurEffect)
        super.init(nibName: nil, bundle: nil)
    }

    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Content

    override open func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }

    private func setupViews() {
        view.backgroundColor = .clear
        view.isOpaque = false
        setupBackground()
        setupDialogView()
        setupContainer()
        setupTitleLabel()
        setupContentScrollView()
        setupButtonContainer()
    }

    private func setupContainer() {
        dialogView.addSubview(containerView)
        containerView.translatesAutoresizingMaskIntoConstraints = false
        containerView.topAnchor.constraint(equalTo: dialogView.topAnchor, constant: contentInsets.top).isActive = true
        containerView.leadingAnchor.constraint(equalTo: dialogView.leadingAnchor, constant: contentInsets.left).isActive = true
        containerView.trailingAnchor.constraint(equalTo: dialogView.trailingAnchor, constant: -contentInsets.top).isActive = true
        containerView.bottomAnchor.constraint(equalTo: dialogView.bottomAnchor, constant: -contentInsets.top).isActive = true
    }

    private func setupTitleLabel() {
        titleLabel.textColor = style.titleStyle.color
        titleLabel.font = style.titleStyle.font
        titleLabel.numberOfLines = 0
        titleLabel.textAlignment = .center
        containerView.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.topAnchor.constraint(equalTo: containerView.topAnchor).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        titleLabel.widthAnchor.constraint(equalTo: containerView.widthAnchor).isActive = true
    }

    private func setupContentScrollView() {
        contentScrollView.isScrollEnabled = true
        contentScrollView.scrollsToTop = false
        dialogView.addSubview(contentContainerView)
        contentContainerView.translatesAutoresizingMaskIntoConstraints = false
        contentContainerView.translatesAutoresizingMaskIntoConstraints = false
        contentContainerView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 5).isActive = true
        contentContainerView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor).isActive = true
        contentContainerView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor).isActive = true

        contentContainerView.addSubview(contentScrollView)
        contentScrollView.translatesAutoresizingMaskIntoConstraints = false
        contentScrollView.topAnchor.constraint(equalTo: contentContainerView.topAnchor).isActive = true
        contentScrollView.leadingAnchor.constraint(equalTo: contentContainerView.leadingAnchor).isActive = true
        contentScrollView.trailingAnchor.constraint(equalTo: contentContainerView.trailingAnchor).isActive = true
        contentScrollView.bottomAnchor.constraint(equalTo: contentContainerView.bottomAnchor).isActive = true
    }

    private func setupButtonContainer() {
        containerView.addSubview(buttonContainerView)
        buttonContainerView.translatesAutoresizingMaskIntoConstraints = false
        buttonContainerView.topAnchor.constraint(equalTo: contentScrollView.bottomAnchor, constant: 5).isActive = true
        buttonContainerView.leadingAnchor.constraint(equalTo: dialogView.leadingAnchor).isActive = true
        buttonContainerView.trailingAnchor.constraint(equalTo: dialogView.trailingAnchor).isActive = true
        buttonContainerView.bottomAnchor.constraint(equalTo: dialogView.bottomAnchor).isActive = true
    }

    private func setupBackground() {
        view.addSubview(backgroundView)
        backgroundView.translatesAutoresizingMaskIntoConstraints = false
        backgroundView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backgroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        backgroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        backgroundView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }

    private func setupDialogView() {
        dialogView.backgroundColor = style.backgroundColor
        dialogView.layer.cornerRadius = style.cornerRadius
        dialogView.layer.shadowColor = UIColor.black.cgColor
        dialogView.layer.shadowOpacity = 1
        dialogView.layer.shadowOffset = .zero
        dialogView.layer.shadowRadius = 10
        dialogView.clipsToBounds = true
        dialogView.layer.opacity = style.opacity

        backgroundView.contentView.addSubview(dialogView)
        dialogView.translatesAutoresizingMaskIntoConstraints = false
        dialogView.widthAnchor.constraint(greaterThanOrEqualToConstant: style.minContainerSize.width).isActive = true
        dialogView.heightAnchor.constraint(greaterThanOrEqualToConstant: style.minContainerSize.height).isActive = true
        dialogView.widthAnchor.constraint(lessThanOrEqualToConstant: style.maxContainerSize.width).isActive = true
        dialogView.heightAnchor.constraint(lessThanOrEqualToConstant: style.maxContainerSize.height).isActive = true
        dialogView.centerXAnchor.constraint(equalTo: backgroundView.centerXAnchor).isActive = true
        dialogView.centerYAnchor.constraint(equalTo: backgroundView.centerYAnchor).isActive = true
    }

    public func update(with config: DialogConfig) {
        titleLabel.text = config.title
        setupButtons(config.buttons)
        setupContentView(config.content())
    }

    private func setupButtons(_ buttons: [DialogButtonConfig]) {
        let buttons = buttons.map { config -> UIButton in // Will be replaced with ETButton
            let button = UIButton()
            button.setTitle(config.title, for: .normal)
            switch config.style {
            case .normal:
                button.titleLabel?.font = style.buttonStyle.titleFont
                button.setTitleColor(style.buttonStyle.titleColor, for: .normal)
            case .preferred:
                button.titleLabel?.font = style.buttonStyle.preferredFont
                button.setTitleColor(style.buttonStyle.preferredColor, for: .normal)
            case .destructive:
                button.titleLabel?.font = style.buttonStyle.destructiveFont
                button.setTitleColor(style.buttonStyle.destructiveColor, for: .normal)
            }
            button.isEnabled = config.enabled
            return button
        }

        buttonContainerView.backgroundColor = style.buttonStyle.borderColor
        let stackView = UIStackView()
        buttonContainerView.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.topAnchor.constraint(equalTo: buttonContainerView.topAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: buttonContainerView.leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: buttonContainerView.trailingAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: buttonContainerView.bottomAnchor).isActive = true
        stackView.alignment = .center
        stackView.distribution = .fillEqually

        buttons.forEach {
            $0.backgroundColor = style.buttonStyle.backgroundColor
            stackView.addArrangedSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
            $0.heightAnchor.constraint(equalToConstant: 40).isActive = true
        }

        if buttons.count == 1 {
            buttons.first?.topAnchor.constraint(equalTo: buttonContainerView.topAnchor).isActive = true
            buttons.first?.leadingAnchor.constraint(equalTo: buttonContainerView.leadingAnchor).isActive = true
            buttons.first?.trailingAnchor.constraint(equalTo: buttonContainerView.trailingAnchor).isActive = true
            buttons.first?.bottomAnchor.constraint(equalTo: buttonContainerView.bottomAnchor).isActive = true
        } else if isWidth(of: buttons, largerThan: style.maxContainerSize.width / CGFloat(buttons.count)) {
            stackView.axis = .vertical
            stackView.spacing = thinLine
            buttons.first?.translatesAutoresizingMaskIntoConstraints = false
            buttons.first?.topAnchor.constraint(equalTo: stackView.topAnchor, constant: thinLine).isActive = true
            buttons.forEach {
                $0.translatesAutoresizingMaskIntoConstraints = false
                $0.widthAnchor.constraint(equalTo: buttonContainerView.widthAnchor).isActive = true
            }
        } else {
            stackView.axis = .horizontal
            stackView.spacing = thinLine
            buttons.forEach {
                $0.translatesAutoresizingMaskIntoConstraints = false
                $0.topAnchor.constraint(equalTo: stackView.topAnchor, constant: thinLine).isActive = true
            }
        }
    }

    func setupContentView(_ contentView: UIView) {
        contentScrollView.addSubview(contentView)
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.topAnchor.constraint(equalTo: contentScrollView.topAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: contentScrollView.bottomAnchor).isActive = true
        let heightConstraint = contentView.heightAnchor.constraint(equalTo: contentContainerView.heightAnchor)
        heightConstraint.priority = .defaultLow
        heightConstraint.isActive = true
        contentView.leadingAnchor.constraint(equalTo: contentContainerView.leadingAnchor).isActive = true
        contentView.trailingAnchor.constraint(equalTo: contentContainerView.trailingAnchor).isActive = true

    }

    // MARK: - Helpers

    private func isWidth(of buttons: [UIButton], largerThan: CGFloat) -> Bool {
        for btn in buttons {
            if let buttonTitle = btn.titleLabel?.text, let font = btn.titleLabel?.font {
                let buttonTitleSize = buttonTitle.sizeOfString(with: font)
                if buttonTitleSize.width >= largerThan {
                    return true
                }
            }
        }
        return false
    }
}

private extension String {
    func sizeOfString(with font: UIFont) -> CGSize {
        let fontAttributes = [NSAttributedStringKey.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size
    }
}
