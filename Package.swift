// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ErrorMessages",
    platforms: [
        .macOS(.v14),
        .macCatalyst(.v17),
        .iOS(.v17),
        .watchOS(.v10),
        .tvOS(.v17),
        .visionOS(.v1)
    ],
    products: [
        .library(
            name: "ErrorMessages",
            targets: [
                "ErrorMessages"
            ]
        )
    ],
    targets: [
        .target(
            name: "ErrorMessages",
            swiftSettings: [
                .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
                .enableUpcomingFeature("ExistentialAny"),
                .enableUpcomingFeature("MemberImportVisibility"),
                .treatAllWarnings(as: .error)
            ]
        ),
        .testTarget(
            name: "ErrorMessagesTests",
            dependencies: [
                "ErrorMessages"
            ],
            swiftSettings: [
                .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
                .enableUpcomingFeature("ExistentialAny"),
                .enableUpcomingFeature("MemberImportVisibility"),
                .treatAllWarnings(as: .error)
            ]
        )
    ]
)
