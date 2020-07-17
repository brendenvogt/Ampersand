// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Ampersand",
    platforms: [.iOS(.v10), .tvOS(.v10)],
    products: [
        .library(
            name: "Ampersand",
            targets: ["Ampersand"])
    ],
    targets: [
        .target(
            name: "Ampersand",
            dependencies: []),
        .testTarget(
            name: "AmpersandTests",
            dependencies: ["Ampersand"])
    ]
)
