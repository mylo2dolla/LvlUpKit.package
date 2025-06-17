// LvlUpKit/Canvas/CanvasAction.swift

import Foundation

public enum CanvasAction: Equatable {
    case clearCanvas
    case toggleLayer(Int)
    case saveDrawing
    case loadDrawing(String)
    case custom(String)
}
