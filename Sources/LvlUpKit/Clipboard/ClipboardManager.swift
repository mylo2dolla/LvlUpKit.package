// MARK: - Sources/LvlUpKit/Clipboard/ClipboardManager.swift

import Foundation
import SwiftUI

public class ClipboardManager: ObservableObject {
    public static let shared = ClipboardManager()
    @Published public var clipboardContent: String = ""
    public var syncEnabled: Bool = false

    private init() {}

    public func copy(_ text: String) {
        UIPasteboard.general.string = text
        clipboardContent = text
        if syncEnabled {
            // Future syncing to devices
        }
    }

    public func paste() -> String {
        let pasted = UIPasteboard.general.string ?? ""
        clipboardContent = pasted
        return pasted
    }

    public func enableSync() {
        syncEnabled = true
    }

    public func disableSync() {
        syncEnabled = false
    }
}
