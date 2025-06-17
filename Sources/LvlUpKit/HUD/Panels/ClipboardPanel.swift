// MARK: - Sources/LvlUpKit/HUD/Panels/ClipboardPanel.swift

import SwiftUI

public struct ClipboardPanel: View {
    public init() {}

    public var body: some View {
        VStack {
            Text("📋 Clipboard Panel")
                .font(.title)
            Text("(Clipboard content coming soon)")
                .font(.caption)
        }
        .padding()
        .background(Color.black.opacity(0.7))
        .cornerRadius(16)
    }
}