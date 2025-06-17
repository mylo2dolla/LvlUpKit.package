//
//  GestureEngine.swift
//  LvlUpKit
//
//  Created by Mylo on 6/7/25.
//


// Sources/LvlUpKit/Gestures/GestureEngine.swift

import Foundation

public class GestureEngine {
    public static let shared = GestureEngine()

    private init() {}

    public func recognizeGesture(_ gesture: GestureType) {
        // Your gesture handling logic here
        print("Recognized gesture: \(gesture.rawValue)")
    }
}
