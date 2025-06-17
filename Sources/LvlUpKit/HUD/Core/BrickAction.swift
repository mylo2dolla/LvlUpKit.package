import Foundation

public enum BrickAction: String {
    case toggleCanvas
    case toggleClipboard
    case showMenu

    public func execute() {
        switch self {
        case .toggleCanvas:
            PanelManager.shared.togglePanel(.canvas)
        case .toggleClipboard:
            PanelManager.shared.togglePanel(.clipboard)
        case .showMenu:
            PanelManager.shared.showPanel(.menu)
        }
    }
}

