// Sources/LvlUpKit/HUD/Core/GestureOverlayView.swift
import SwiftUI

public struct GestureOverlayView: View {
    public init() {}

    public var body: some View {
        VStack(spacing: 16) {
            Button("Double Tap") {
                GestureEngine.shared.recognizeGesture(.doubleTap)
            }
            Button("Long Press") {
                GestureEngine.shared.recognizeGesture(.longPress)
            }
            Button("Swipe Left") {
                GestureEngine.shared.recognizeGesture(.swipeLeft)
            }
        }
        .padding()
    }
}
