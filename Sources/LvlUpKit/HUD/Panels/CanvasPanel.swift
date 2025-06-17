// MARK: - Sources/LvlUpKit/HUD/Panels/CanvasPanel.swift

import SwiftUI

public struct CanvasPanel: View {
    public init() {}

    public var body: some View {
        VStack {
            Text("🖊 Canvas Panel")
                .font(.title2)
            Text("(Live scribble sync coming soon)")
                .font(.footnote)
        }
        .padding()
        .background(Color.blue.opacity(0.5))
        .cornerRadius(16)
    }
}