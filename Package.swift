// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "configure-kit",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "ConfigureKit",
            targets: ["ConfigureKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/console-kit.git", from: "4.2.1"),
        .package(url: "https://github.com/apple/swift-nio.git", from: "2.18.0"),
        .package(url: "https://github.com/vapor/async-kit.git", from: "1.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "ConfigureKit",
            dependencies: [
                .product(name: "ConsoleKit", package: "console-kit"),
                .product(name: "NIO", package: "swift-nio"),
                .product(name: "AsyncKit", package: "async-kit")
            ]),
        .testTarget(
            name: "ConfigureKitTests",
            dependencies: ["ConfigureKit"]),
    ]
)
