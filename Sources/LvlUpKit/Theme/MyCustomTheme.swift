import SwiftUI

struct MyCustomTheme {
    static let lightOcean = BrickTheme(
        backgroundColor: Color(red: 230/255, green: 245/255, blue: 255/255),
        secondaryColor: Color(red: 180/255, green: 210/255, blue: 255/255),
        font: Font.title,
        foregroundColor: Color(red: 0.2, green: 0.3, blue: 0.5),
        padding: 16,
        cornerRadius: 20
    )
}

extension View {
    func textShadow(color: Color, radius: CGFloat, x: CGFloat, y: CGFloat) -> some View {
        self.shadow(color: color, radius: radius, x: x, y: y)
    }
}
