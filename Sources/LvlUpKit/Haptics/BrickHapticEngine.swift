// BrickHapticEngine.swift
import Foundation
import UIKit
import CoreHaptics

public class BrickHapticEngine {
    public static let shared = BrickHapticEngine()

    private var hapticEngine: CHHapticEngine?

    public init() {
        prepareEngine()
    }

    private func prepareEngine() {
        guard CHHapticEngine.capabilitiesForHardware().supportsHaptics else { return }
        do {
            self.hapticEngine = try CHHapticEngine()
            try self.hapticEngine?.start()
        } catch {
            print("Haptic engine error: \(error)")
        }
    }

    public func tap() {
        simpleImpact(style: .light)
    }

    public func selection() {
        let generator = UISelectionFeedbackGenerator()
        generator.prepare()
        generator.selectionChanged()
    }

    public func warn() {
        simpleImpact(style: .medium)
    }

    private func simpleImpact(style: UIImpactFeedbackGenerator.FeedbackStyle) {
        let generator = UIImpactFeedbackGenerator(style: style)
        generator.prepare()
        generator.impactOccurred()
    }
}
