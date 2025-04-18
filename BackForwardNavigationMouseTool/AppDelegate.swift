//
//  AppDelegate.swift
//  BackForwardNavigationMouseTool
//
//  Created by PARK BYUNGJUN on 2025/04/18.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    var window: NSWindow?

    func applicationDidFinishLaunching(_ notification: Notification) {
        let window = NSWindow(
            contentRect: NSRect(x: 0, y: 0, width: 480, height: 300),
            styleMask: [.titled, .closable, .miniaturizable, .resizable],
            backing: .buffered,
            defer: false
        )
        window.center()
        window.title = "Mouse Button Navigation"

        // 안내 텍스트 추가
        let textView = NSTextView(frame: NSRect(x: 20, y: 20, width: 440, height: 260))
        textView.string = """
        Mouse Button Navigation Extension
        This extension allows you to use mouse buttons 4 and 5 for backward and forward navigation in Safari.
        How to use:
            1.    Activate this extension in Safari > Preferences > Extensions.
            2.    Press mouse button 4 to navigate backward
            3.    Press mouse button 5 to navigate forward
        Note: Button numbers may vary depending on your mouse model.
        """
        textView.isEditable = false
        textView.isSelectable = true
        textView.backgroundColor = NSColor.textBackgroundColor
        textView.font = NSFont.systemFont(ofSize: 13)

        let scrollView = NSScrollView(frame: NSRect(x: 20, y: 20, width: 440, height: 260))
        scrollView.documentView = textView
        scrollView.hasVerticalScroller = true

        window.contentView?.addSubview(scrollView)
        window.makeKeyAndOrderFront(nil)

        self.window = window
    }

    func applicationWillTerminate(_ notification: Notification) {
    }

    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return true
    }

}
