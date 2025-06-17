import SwiftUI
public struct BrickCanvasLauncher: View {
    public init() {}
    
    public var body: some View {
        Button(action: {
            HUDActionManager.shared.toggleCanvas()
        }) {
            Image(systemName: "square.grid.2x2")
        }
    }
}
