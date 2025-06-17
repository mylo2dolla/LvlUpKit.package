//
//  BrickButton.swift
//  LvlUpKit
//
//  Created by Mylo on 6/7/25.
//


import SwiftUI

public struct BrickButton: View {
    public enum ButtonShape {
        case circle, roundedRect, capsule
    }

    let title: String
    let action: () -> Void
    var shape: ButtonShape = .roundedRect
    var backgroundColor: Color = .red
    var foregroundColor: Color = .white
    var glow: Bool = false

    public init(
        title: String,
        shape: ButtonShape = .roundedRect,
        backgroundColor: Color = .red,
        foregroundColor: Color = .white,
        glow: Bool = false,
        action: @escaping () -> Void
    ) {
        self.title = title
        self.shape = shape
        self.backgroundColor = backgroundColor
        self.foregroundColor = foregroundColor
        self.glow = glow
        self.action = action
    }

    public var body: some View {
        Button(action: action) {
            Text(title)
                .fontWeight(.semibold)
                .padding()
                .frame(minWidth: 60, minHeight: 44)
                .background(backgroundView)
                .foregroundColor(foregroundColor)
                .shadow(color: glow ? backgroundColor.opacity(0.8) : .clear, radius: glow ? 8 : 0)
        }
        .buttonStyle(PlainButtonStyle())
    }

    @ViewBuilder
    private var backgroundView: some View {
        switch shape {
        case .circle:
            Circle().fill(backgroundColor)
        case .roundedRect:
            RoundedRectangle(cornerRadius: 10).fill(backgroundColor)
        case .capsule:
            Capsule().fill(backgroundColor)
        }
    }
}
