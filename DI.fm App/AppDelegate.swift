//
//  AppDelegate.swift
//  DI.fm App
//
//  Created by Milen Pivchev on 8/11/21.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {
    let popover = NSPopover()
    let statusItem = NSStatusBar.system.statusItem(withLength:NSStatusItem.squareLength)

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        if let button = statusItem.button {
          button.image = NSImage(systemSymbolName: "music.note.list", accessibilityDescription: nil)
          button.action = #selector(togglePopover(_:))
        }

        popover.contentViewController = LoginViewController.new()
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    @objc func togglePopover(_ sender: Any?) {
      if popover.isShown {
        closePopover(sender: sender)
      } else {
        showPopover(sender: sender)
      }
    }

    func showPopover(sender: Any?) {
      if let button = statusItem.button {
        popover.show(relativeTo: button.bounds, of: button, preferredEdge: NSRectEdge.minY)
      }
    }

    func closePopover(sender: Any?) {
      popover.performClose(sender)
    }

}

