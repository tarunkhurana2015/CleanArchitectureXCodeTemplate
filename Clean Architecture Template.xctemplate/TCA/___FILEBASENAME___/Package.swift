// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "___VARIABLE_productName:identifier___",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "___VARIABLE_productName:identifier___",
            targets: ["___VARIABLE_productName:identifier___"]),
    ],
    dependencies: [
        .package(url: "https://github.com/pointfreeco/swift-dependencies", exact: "1.2.2"),
        .package(url: "https://github.com/pointfreeco/swift-composable-architecture.git", exact: "1.10.0"),
        .package(name: "Core", path: "../Core")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "___VARIABLE_productName:identifier___",
            dependencies: [
                .product(name: "Dependencies", package: "swift-dependencies"),
                .product(name: "ComposableArchitecture", package: "swift-composable-architecture"),
                .product(name: "Networking", package: "Core"),
                .product(name: "Authentication", package: "Core")
            ],
            resources: [
                .process("Resources")
            ]
        ),
        .testTarget(
            name: "___VARIABLE_productName:identifier___Tests",
            dependencies: ["___VARIABLE_productName:identifier___"]),
    ]
)
