// MARK: - Sources/LvlUpKit/HUD/BrickHUDControlPanel.swift

import SwiftUI

public struct BrickHUDControlPanel: View {
    @ObservedObject var themeManager = BrickThemeManager.shared

    public init() {}

    public var body: some View {
        VStack(spacing: 16) {
            ToggleControl(title: "Clipboard Sync") { isOn in
                HUDActionManager.shared.performAction(isOn ? "enableClipboardSync" : "disableClipboardSync")
            }

            ToggleControl(title: "Gesture Debug") { isOn in
                HUDActionManager.shared.performAction(isOn ? "enableGestureDebug" : "disableGestureDebug")
            }
        }
        .padding()
        .background(themeManager.theme.backgroundColor.opacity(0.95))
        .cornerRadius(20)
        .shadow(radius: 10)
    }
}
