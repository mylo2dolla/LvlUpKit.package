// MARK: - Sources/LvlUpKit/Floating/FloatingPanelManager.swift

import Foundation
import Combine

public final class FloatingPanelManager: ObservableObject {
    public static let shared = FloatingPanelManager()

    @Published public var isWheelVisible: Bool = false

    private init() {}

    public func setFloatingWheelVisible(_ visible: Bool) {
        isWheelVisible = visible
    }
}