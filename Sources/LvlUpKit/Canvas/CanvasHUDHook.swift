import Foundation

extension HUDActionManager {
    public func handleGesture(_ gesture: CanvasGesture) {
        if let action = CanvasGestureRouter.shared.resolve(gesture) {
            self.trigger(action)
        }
    }

    public func trigger(_ action: CanvasAction) {
        switch action {
        case .clearCanvas:
            print("Canvas cleared")
        case .toggleLayer(let index):
            print("Toggling layer: \(index)")
        case .saveDrawing:
            print("Saving drawing")
        case .loadDrawing(let name):
            print("Loading drawing: \(name)")
        case .custom(let command):
            print("Custom canvas action: \(command)")
        }
    }
}
