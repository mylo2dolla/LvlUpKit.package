// LvlUpKit/Canvas/CanvasOverlayView.swift

import SwiftUI
import PencilKit

public struct CanvasOverlayView: UIViewRepresentable {
    @Binding var canvasView: PKCanvasView
    var toolPicker = PKToolPicker()

    public init(canvasView: Binding<PKCanvasView>) {
        self._canvasView = canvasView
    }

    public func makeUIView(context: Context) -> PKCanvasView {
        canvasView.drawingPolicy = .anyInput
        canvasView.backgroundColor = .clear
        toolPicker.setVisible(true, forFirstResponder: canvasView)
        toolPicker.addObserver(canvasView)
        canvasView.becomeFirstResponder()
        return canvasView
    }

    public func updateUIView(_ uiView: PKCanvasView, context: Context) {}
}