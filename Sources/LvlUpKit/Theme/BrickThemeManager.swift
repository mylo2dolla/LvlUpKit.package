import SwiftUI
import Combine

public class BrickThemeManager: ObservableObject {
    public static let shared = BrickThemeManager()

    @Published public var theme: BrickTheme = MyCustomTheme.lightOcean

    private init() {}
}
