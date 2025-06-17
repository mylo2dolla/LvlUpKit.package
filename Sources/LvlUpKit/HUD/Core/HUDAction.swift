import Foundation
import SwiftUI
public class HUDActionManager: ObservableObject {
    public static let shared = HUDActionManager()
    
    @Published public var activeAction: String? = nil
    
    public func performAction(_ name: String) {
        activeAction = name
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.activeAction = nil
        }
    }
    
    public func openClipboard() {
        performAction("openClipboard")
        // Add actual panel handling logic if needed
    }
    
    public func toggleCanvas() {
        performAction("toggleCanvas")
        // Add actual canvas toggle logic here
    }
    
    public func togglePanel(_ name: String) {
        performAction("togglePanel:\(name)")
    }
}
