//
//  ViewController.swift
//  DI.fm App
//
//  Created by Milen Pivchev on 8/11/21.
//

import Cocoa
import SnapKit

class PopoverViewController: NSViewController {
    private let label = NSTextField(labelWithString: "Text")

    override func viewDidLoad() {
        super.viewDidLoad()

        configure()
        layout()

        Api.logIn { user in
        }
    }

    private func configure() {
    }

    private func layout() {
        view.addSubview(label)
        label.snp.makeConstraints { make in
            make.top.leading.equalToSuperview()
        }
    }

    static func new() -> PopoverViewController {
        let storyboard = NSStoryboard(name: NSStoryboard.Name("Main"), bundle: nil)
        let identifier = NSStoryboard.SceneIdentifier("PopoverViewController")

        guard let viewcontroller = storyboard.instantiateController(withIdentifier: identifier) as? PopoverViewController else {
            fatalError("Coult not instantiate.")
        }

        return viewcontroller
    }
}

