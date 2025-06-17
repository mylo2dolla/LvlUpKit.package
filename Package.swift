// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "LvlUpKit",
    platforms: [
        .iOS(.v15), .macOS(.v12)
    ],
    products: [
        .library(name: "LvlUpKit", targets: ["LvlUpKit"])
    ],
    targets: [
        .target(
            name: "LvlUpKit",
            path: "Sources/LvlUpKit",
            resources: []
        ),
        .testTarget(
            name: "LvlUpKitTests",
            dependencies: ["LvlUpKit"],
            path: "Tests/LvlUpKitTests"
        )
    ]
)
