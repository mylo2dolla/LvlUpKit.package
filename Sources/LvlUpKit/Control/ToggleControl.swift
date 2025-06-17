// MARK: - Sources/LvlUpKit/Control/ToggleControl.swift

import SwiftUI

public struct ToggleControl: View {
    @ObservedObject private var themeManager = BrickThemeManager.shared
    @State private var isOn: Bool = false

    public var title: String
    public var action: ((Bool) -> Void)?

    public init(title: String, action: ((Bool) -> Void)? = nil) {
        self.title = title
        self.action = action
    }

    public var body: some View {
        HStack {
            Text(title)
                .font(themeManager.theme.font)
                .foregroundColor(themeManager.theme.foregroundColor)
            Spacer()
            Toggle("", isOn: $isOn)
                .labelsHidden()
                .onChange(of: isOn) { newValue in
                    BrickHapticEngine.shared.selection()
                    action?(newValue)
                }
        }
        .padding(themeManager.theme.padding)
        .background(themeManager.theme.backgroundColor)
        .cornerRadius(themeManager.theme.cornerRadius)
        .shadow(radius: 5)
    }
}