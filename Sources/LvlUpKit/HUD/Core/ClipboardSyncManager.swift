// ClipboardSyncManager.swift
import Foundation
#if canImport(UIKit)
import UIKit
#endif

public class ClipboardSyncManager {
    public static let shared = ClipboardSyncManager()
    private init() {}
    
    #if canImport(UIKit)
    private let pasteboard = UIPasteboard.general
    #endif
    
    public var isSyncEnabled: Bool = false
    
    public func enableSync() {
        isSyncEnabled = true
        print("Clipboard sync enabled")
    }
    
    public func disableSync() {
        isSyncEnabled = false
        print("Clipboard sync disabled")
    }
    
    public func copyToClipboard(_ text: String) {
        #if canImport(UIKit)
        pasteboard.string = text
        print("Copied to clipboard: \(text)")
        #else
        print("Clipboard not available")
        #endif
    }
    
    public func pasteFromClipboard() -> String? {
        #if canImport(UIKit)
        return pasteboard.string
        #else
        return nil
        #endif
    }
}
