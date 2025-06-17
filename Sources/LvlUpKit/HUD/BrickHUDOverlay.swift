// MARK: - Sources/LvlUpKit/HUD/BrickHUDOverlay.swift

import SwiftUI

public struct BrickHUDOverlay: View {
    @Binding public var isVisible: Bool

    public init(isVisible: Binding<Bool>) {
        self._isVisible = isVisible
    }

    public var body: some View {
        ZStack(alignment: .bottom) {
            if isVisible {
                BrickHUDPanel()
                    .transition(.move(edge: .bottom).combined(with: .opacity))
                    .animation(.spring(), value: isVisible)
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}
