// Sources/LvlUpKit/Canvas/LiveHUDCanvas.swift
import SwiftUI

public struct LiveHUDCanvas: View {
    public init() {}

    public var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "exclamationmark.triangle")
                .foregroundColor(.yellow)
                .font(.largeTitle)

            Button("Trigger Warning Haptic") {
                BrickHapticEngine.shared.warn()
            }
        }
        .padding()
        .background(Color.black.opacity(0.8))
        .cornerRadius(12)
    }
}
