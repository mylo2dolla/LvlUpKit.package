// MARK: - Sources/LvlUpKit/Floating/FloatingWheel.swift

import SwiftUI

public struct FloatingWheel: View {
    @ObservedObject var panelManager = FloatingPanelManager.shared

    public init() {}

    public var body: some View {
        Group {
            if panelManager.isWheelVisible {
                Circle()
                    .fill(Color.red)
                    .frame(width: 100, height: 100)
                    .overlay(
                        Circle()
                            .stroke(Color.red.opacity(0.8), lineWidth: 4)
                            .shadow(color: .black, radius: 10, x: 0, y: 4)
                    )
                    .transition(.scale)
                    .animation(.easeInOut, value: panelManager.isWheelVisible)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
        .padding()
    }
}
