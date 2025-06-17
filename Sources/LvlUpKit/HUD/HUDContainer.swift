import SwiftUI

public struct HUDContainer: View {
    public init() {}

    public var body: some View {
        PanelManagerView()
    }
}

public struct PanelManagerView: View {
    public init() {}
    public var body: some View {
        VStack(spacing: 16) {
            DebugPanel()
            SettingsPanel()
            MenuPanel()
            QuickTestPanel()
        }
        .padding()
    }
}
