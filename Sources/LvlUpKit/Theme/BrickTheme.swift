import SwiftUI

public struct BrickTheme {
    public var backgroundColor: Color
    public var secondaryColor: Color
    public var font: Font
    public var foregroundColor: Color
    public var padding: CGFloat
    public var cornerRadius: CGFloat
    public init(
        backgroundColor: Color,
        secondaryColor: Color,
        font: Font,
        foregroundColor: Color,
        padding: CGFloat,
        cornerRadius: CGFloat
    ) {
        self.backgroundColor = backgroundColor
        self.secondaryColor = secondaryColor
        self.font = font
        self.foregroundColor = foregroundColor
        self.padding = padding
        self.cornerRadius = cornerRadius
    }
    public static let lightocean = BrickTheme(
        backgroundColor: .black,
        secondaryColor: .gray,
        font: .body,
        foregroundColor: .black,
        padding: 12,
        cornerRadius: 16
    )
}
