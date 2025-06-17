import Foundation

public class CanvasGestureRouter {
    public static let shared = CanvasGestureRouter()

    public func resolve(_ gesture: CanvasGesture) -> CanvasAction? {
        switch gesture {
        case .draw(let velocity) where velocity.width > 100:
            return .toggleLayer(1)
        case .doubleTap:
            return .clearCanvas
        default:
            return nil
        }
    }
}