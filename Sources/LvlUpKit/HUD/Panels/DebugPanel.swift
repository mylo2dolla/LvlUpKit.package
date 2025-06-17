//
//  DebugPanel.swift
//  LvlUpKit
//
//  Created by Mylo on 6/7/25.
//


// DebugPanel.swift
import SwiftUI

public struct DebugPanel: View {
    public var body: some View {
        VStack {
            Text("Debug Panel")
                .font(.headline)
            Text("Debug information goes here")
                .foregroundColor(.red)
        }
        .padding()
    }
}
