// LvlUpKit/Canvas/CanvasGesture.swift

import Foundation

public enum CanvasGesture: Equatable {
    case draw(CGSize) // velocity vector
    case doubleTap
    case hold
    case combo([CanvasGesture])
}