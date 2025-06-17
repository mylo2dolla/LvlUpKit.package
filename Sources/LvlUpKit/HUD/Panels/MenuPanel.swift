import SwiftUI

public struct MenuPanel: View {
    public init() {}

    public var body: some View {
        VStack(spacing: 16) {
            Text("📁 Menu Panel")
                .font(.title2)
            Button("Open Clipboard") {
                HUDActionManager.perform(.openClipboard)
            }
            Button("Toggle Canvas") {
                HUDActionManager.perform(.toggleCanvas)
            }
        }
        .padding()
        .background(Color.gray.opacity(0.6))
        .cornerRadius(16)
    }
}
