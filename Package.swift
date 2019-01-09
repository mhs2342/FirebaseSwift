// swift-tools-version:4.2
import PackageDescription

let package = Package(
    name: "FirebaseSwift",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "FirebaseSwift",
            targets: ["FirebaseSwift"]),
        ],
    dependencies: [
        .package(url: "https://github.com/JustHTTP/Just.git",  from: "0.7.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "FirebaseSwift",
            dependencies: ["Just"]),
        .testTarget(
            name: "FirebaseSwiftTests",
            dependencies: ["FirebaseSwift"]),
        ]

)
