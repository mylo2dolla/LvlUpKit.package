// MARK: - Sources/LvlUpKit/Engine/BrickHapticEngine.swift

import Foundation
import CoreHaptics
import SwiftUI

public class HapticEngine {
    public static let shared = HapticEngine()

    private init() {}

    public func tap() {
        UIImpactFeedbackGenerator(style: .medium).impactOccurred()
    }

    public func warning() {
        UINotificationFeedbackGenerator().notificationOccurred(.warning)
    }

    public func success() {
        UINotificationFeedbackGenerator().notificationOccurred(.success)
    }

    public func selection() {
        UISelectionFeedbackGenerator().selectionChanged()
    }
}
