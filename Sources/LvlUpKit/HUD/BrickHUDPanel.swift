// MARK: - Sources/LvlUpKit/HUD/BrickHUDPanel.swift

import SwiftUI

public struct BrickHUDPanel: View {
    @ObservedObject private var themeManager = BrickThemeManager.shared

    public init() {}

    public var body: some View {
        VStack(spacing: 20) {
            Text("HUD Control Panel")
                .font(themeManager.theme.font)
                .foregroundColor(themeManager.theme.foregroundColor)

            BrickHUDButtonRow()
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: themeManager.theme.cornerRadius)
                .fill(themeManager.theme.secondaryColor)
                .shadow(color: .black.opacity(0.4), radius: 12, x: 0, y: 6)
        )
        .padding()
    }
}