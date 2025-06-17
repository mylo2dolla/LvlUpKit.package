// Sources/LvlUpKit/HUD/Core/GestureActionMap.swift
import Foundation

public struct GestureActionMap {
    public var actions: [GestureType: String] = [:]

    public init() {
        actions = [
            .doubleTap: "toggleHUD",
            .longPress: "openMenu",
            .swipeLeft: "previousPanel"
        ]
    }

    public func action(for gesture: GestureType) -> String? {
        actions[gesture]
    }
}
