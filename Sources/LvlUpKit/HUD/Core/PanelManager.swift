import Foundation
import Combine
public final class PanelManager: ObservableObject {
    public static let shared = PanelManager()
    public enum Panel: String {
        case settings, debug, clipboard, menu, canvas
    }
    @Published private(set) public var activePanel: Panel?
    public func togglePanel(_ panel: Panel) {
        activePanel = (activePanel == panel) ? nil : panel
    }
    public func showPanel(_ panel: Panel) {
        activePanel = panel
    }
    public func hidePanel() {
        activePanel = nil
    }
}
