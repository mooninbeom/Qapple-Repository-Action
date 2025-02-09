// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Qapple-Repository",
    platforms: [
        .macOS(.v15),
        .iOS(.v17),
    ],
    products: [
        .library(
            name: "Qapple-Repository",
            targets: ["Qapple-Repository"]),
    ],
    targets: [
        .target(
            name: "Qapple-Repository"),
        .testTarget(
            name: "Qapple-RepositoryTests",
            dependencies: ["Qapple-Repository"]
        ),
    ]
)
