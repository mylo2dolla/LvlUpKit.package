import SwiftUI
import CoreHaptics
import Foundation
import Combine

public struct BrickHUDButtonView: View {
    @ObservedObject private var themeManager = BrickThemeManager.shared
    @State private var isActive: Bool = false
    @State private var isPressed: Bool = false
    
    private let impactGenerator = UIImpactFeedbackGenerator(style: .medium)
    private let selectionGenerator = UISelectionFeedbackGenerator()
    
    public var action: (() -> Void)?
    public var alternateAction: (() -> Void)?
    
    public var body: some View {
        Button(action: {
            isActive.toggle()
            action?()
            impactGenerator.impactOccurred()
        }) {
            //... (your original code remains the same here)
        }
        .simultaneousGesture(LongPressGesture(minimumDuration: 0.5).onEnded { _ in
            alternateAction?()
            selectionGenerator.selectionChanged()
        })
    }
}
