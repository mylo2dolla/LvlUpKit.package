// Sources/LvlUpKit/Draw/PencilGestureManager.swift

import SwiftUI
import PencilKit

public class PencilGestureManager: ObservableObject {
    public static let shared = PencilGestureManager()

    @Published public var drawnShape: String?

    private let gestureEngine = GestureEngine.shared

    private init() {}

    public func recognizeShape(from path: PKDrawing) {
        // Future shape recognition logic
        self.drawnShape = "circle" // placeholder for real detection
        gestureEngine.recognizeGesture(.tap)
    }
}
