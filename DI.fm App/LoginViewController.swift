//
//  ViewController.swift
//  DI.fm App
//
//  Created by Milen Pivchev on 8/11/21.
//

import Cocoa
import SnapKit

class LoginViewController: NSViewController {
    let container = NSView()
    private let usernameField = NSTextField()
    private let passwordField = NSSecureTextField()
    private let loginButton = NSButton(title: "Log in", target: self, action: #selector(logIn))

    override func viewDidLoad() {
        super.viewDidLoad()

        configure()
        layout()

        Api.logIn { user in
        }
    }

    private func configure() {
        usernameField.placeholderString = "Email"
        passwordField.placeholderString = "Password"
    }

    private func layout() {
        view.addSubview(container)
        container.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.equalTo(200)
        }

        container.addSubview(usernameField)
        usernameField.snp.makeConstraints { make in
            make.top.leading.trailing.equalToSuperview()
        }

        container.addSubview(passwordField)
        passwordField.snp.makeConstraints { make in
            make.top.equalTo(usernameField.snp.bottom).offset(6)
            make.leading.trailing.equalToSuperview()
        }

        container.addSubview(loginButton)
        loginButton.snp.makeConstraints { make in
            make.top.equalTo(passwordField.snp.bottom).offset(6)
            make.bottom.equalToSuperview()
            make.centerX.equalToSuperview()
        }
    }

    @objc func logIn(sender: Any?) {
    }


    static func new() -> LoginViewController {
        let storyboard = NSStoryboard(name: NSStoryboard.Name("Main"), bundle: nil)
        let identifier = NSStoryboard.SceneIdentifier("LoginViewController")

        guard let viewcontroller = storyboard.instantiateController(withIdentifier: identifier) as? LoginViewController else {
            fatalError("Could not instantiate.")
        }

        return viewcontroller
    }
    
}

