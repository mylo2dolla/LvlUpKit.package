//
//  BrickClipboardManager.swift
//  LvlUpKit
//
//  Created by Mylo on 6/7/25.
//


import Foundation
import Combine
#if canImport(UIKit)
import UIKit
#endif

public final class BrickClipboardManager: ObservableObject {
    public static let shared = BrickClipboardManager()

    @Published public private(set) var isSyncEnabled: Bool = false
    private var cancellable: AnyCancellable?
    private var lastClipboard: String?

    private init() {}

    public func enableSync() {
        guard !isSyncEnabled else { return }
        isSyncEnabled = true
        startPolling()
    }

    public func disableSync() {
        guard isSyncEnabled else { return }
        isSyncEnabled = false
        cancellable?.cancel()
    }

    private func startPolling() {
        cancellable = Timer.publish(every: 2, on: .main, in: .common)
            .autoconnect()
            .sink { [weak self] _ in
                self?.checkClipboard()
            }
    }

    private func checkClipboard() {
        #if canImport(UIKit)
        if let value = UIPasteboard.general.string, value != lastClipboard {
            lastClipboard = value
            if isSyncEnabled {
                print("[BrickClipboardManager] Clipboard changed: \(value)")
            }
        }
        #endif
    }

    public func pushClipboard(_ content: String) {
        #if canImport(UIKit)
        UIPasteboard.general.string = content
        lastClipboard = content
        #endif
    }
}
