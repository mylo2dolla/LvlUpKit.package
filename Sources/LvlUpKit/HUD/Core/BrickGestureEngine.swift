//
//  BrickGestureEngine.swift
//  LvlUpKit
//
//  Created by Mylo on 6/7/25.
//


import Combine
import SwiftUI

public final class BrickGestureEngine: ObservableObject {
    public static let shared = BrickGestureEngine()

    @Published public var debugMode: Bool = false
    private var cancellables = Set<AnyCancellable>()

    private init() {}

    public func bindGesture<T: Publisher>(_ gesturePublisher: T, action: @escaping () -> Void) where T.Output == GestureType, T.Failure == Never {
        gesturePublisher
            .sink { gesture in
                if self.debugMode {
                    print("[BrickGestureEngine] Detected gesture: \(gesture.rawValue)")
                }
                action()
            }
            .store(in: &cancellables)
    }

    public enum GestureType: String {
        case swipeLeft, swipeRight, swipeUp, swipeDown, tap, doubleTap
    }
}
