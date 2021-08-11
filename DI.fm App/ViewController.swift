//
//  ViewController.swift
//  DI.fm App
//
//  Created by Milen Pivchev on 8/11/21.
//

import Cocoa
import SnapKit

class ViewController: NSViewController {
    private let label = NSTextField(labelWithString: "Text")

    override func viewDidLoad() {
        super.viewDidLoad()

        configure()
        layout()

        Api.fetchChannels{ channels in
            print(channels[0])
        }

        // Do any additional setup after loading the view.
    }

    private func configure() {
    }

    private func layout() {
        view.addSubview(label)
        label.snp.makeConstraints { make in
            make.top.leading.equalToSuperview()
        }
    }

//    override var representedObject: Any? {
//        didSet {
//        // Update the view, if already loaded.
//        }
//    }


}

