//
//  AppDelegate.swift
//  toggle-mute
//
//  Created by Giacomo Rebonato on 10/4/20.
//  Copyright © 2020 Giacomo Rebonato. All rights reserved.
//

import Cocoa
import SwiftUI

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    var popover = NSPopover.init()
    var statusBar: StatusBarController?
    

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        let contentView = ContentView()

        // Set the SwiftUI's ContentView to the Popover's ContentViewController
        popover.contentSize = NSSize(width: 360, height: 360)
        popover.contentViewController = NSHostingController(rootView: contentView)
        
        // Create the Status Bar Item with the above Popover
        statusBar = StatusBarController.init(popover)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

