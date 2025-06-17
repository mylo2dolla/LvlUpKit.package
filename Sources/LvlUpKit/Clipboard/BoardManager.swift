import Foundation
import Combine

public class BoardManager: ObservableObject {
    public static let shared = BoardManager()
    
    @Published public var clipboardContent: String = ""
    
    private init() {}
    
    public func updateClipboard(content: String) {
        clipboardContent = content
        // Sync or persist clipboard if needed
    }
}
