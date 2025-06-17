//
//  QuickTestPanel.swift
//  LvlUpKit
//
//  Created by Mylo on 6/7/25.
//


// QuickTestPanel.swift
import SwiftUI

public struct QuickTestPanel: View {
    public init() {}

    public var body: some View {
        VStack(spacing: 12) {
            Text("🧪 Quick Test")
                .font(.title)
                .foregroundColor(.green)

            Button("Trigger Haptic") {
                BrickHapticEngine.shared.tap()
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)

            Button("Toggle Clipboard Panel") {
                PanelManager.shared.togglePanel(.clipboard)
            }
            .padding()
            .background(Color.orange)
            .foregroundColor(.black)
            .cornerRadius(10)
        }
        .padding()
        .background(Color.black.opacity(0.7))
        .cornerRadius(16)
        .shadow(radius: 10)
    }
}
