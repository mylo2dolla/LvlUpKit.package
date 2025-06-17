// MARK: - Sources/LvlUpKit/HUD/BrickHUDLauncher.swift

import SwiftUI

public struct BrickHUDLauncher: View {
    @State private var isHUDVisible: Bool = false

    public init() {}

    public var body: some View {
        ZStack {
            BrickHUDOverlay(isVisible: $isHUDVisible)

            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Button(action: {
                        isHUDVisible.toggle()
                        BrickHapticEngine.shared.selection()
                    }) {
                        Image(systemName: "circle.grid.3x3")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .padding()
                            .background(Circle().fill(Color.red))
                            .foregroundColor(.white)
                            .shadow(radius: 10)
                    }
                    .padding()
                }
            }
        }
    }
}
