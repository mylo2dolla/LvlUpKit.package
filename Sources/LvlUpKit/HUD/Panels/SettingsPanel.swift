//
//  SettingsPanel.swift
//  LvlUpKit
//
//  Created by Mylo on 6/7/25.
//


// SettingsPanel.swift
import SwiftUI

public struct SettingsPanel: View {
    public var body: some View {
        VStack {
            Text("Settings Panel")
                .font(.headline)
            Toggle(isOn: .constant(true)) {
                Text("Example Setting")
            }
            .padding()
        }
        .padding()
    }
}
