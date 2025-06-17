import SwiftUI
import UIKit
import CoreHaptics
public struct BrickHUDButton: View {
    //... (your code remains the same)
    private let impactGenerator = UIImpactFeedbackGenerator(style: .medium)
    public init(
        icon: String,
        action: @escaping () -> Void,
        alternateAction: @escaping () -> Void
    ) {
        self.icon = icon
        self.action = action
        self.alternateAction = alternateAction
        impactGenerator.prepare()
    }
    //...
    .gesture(
        DragGesture(minimumDistance: 0)
            .onChanged { _ in
                if !isPressed {
                    isPressed = true
                    impactGenerator.impactOccurred(intensity: 1.0)
                }
            }
            //... (your code remains the same)
    )
    .onLongPressGesture(minimumDuration: 0.5) {
        useAlternate = true
        impactGenerator.notificationOccurred(.success)
    }
    //...
}
