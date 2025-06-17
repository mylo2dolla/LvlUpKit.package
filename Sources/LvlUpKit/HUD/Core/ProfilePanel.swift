// MARK: - Sources/LvlUpKit/HUD/Panels/ProfilePanel.swift

import SwiftUI

public struct ProfilePanel: View {
    @ObservedObject private var panelManager = PanelManager.shared

    public init() {}

    public var body: some View {
        VStack(spacing: 10) {
            Text("👤 Profiles")
                .font(.title3)
                .bold()

            // Replace this line:
            ForEach(panelManager.profiles) { profile in
                Button(action: {
                    panelManager.loadProfile(profile)
                }) {
                    Text(profile.name)
                }
            }

            // Do NOT use `$panelManager` (bad binding!)


            Button("Save Current As New") {
                let name = "Custom \(Int.random(in: 100...999))"
                panelManager.saveProfile(name: name)
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
        .background(Color.purple.opacity(0.6))
        .cornerRadius(16)
    }
}
