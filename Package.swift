// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "3.14.0"
let package = Package(
    name: "AATKit-s1",
    platforms: [.iOS(.v12)],
    products: [
        .library(name: "AATKit-Core", targets: ["AATKit-Core"]),
        .library(name: "AATKit-Tappx", targets: ["AATKit-Tappx"]),
    ],
    targets: [
        // AATKit target
        .target(name:"AATKit-Core",
                dependencies: [
                    .target(name: "AATKit"),
                ],
                path: "./Sources/AATKit"),
        .target(name:"AATKit-Tappx",
                dependencies: [
                    .target(name: "TappxFramework"),
                    .target(name: "AATTappxAdapter")
                ],
                path: "./Sources/TappxSources"),
        // Mark: Binary Targets
        // AATKit
        .binaryTarget(
            name: "AATKit",
            url:
                "https://ios-sdk.aatkit.com/AATKit_SPM/\(version).zip",
            checksum: "c1d40ba6d3d8dca45909dacf2066d2a7deac170f8bcb66207acf3ada8b7f1a39"
        ),
        // FeedAd
        .binaryTarget(
            name: "TappxFramework",
            url:
                "https://ios-sdk.aatkit.com/AATKit_SPM/\(version).zip",
            checksum: "c1d40ba6d3d8dca45909dacf2066d2a7deac170f8bcb66207acf3ada8b7f1a39"
        ),
        .binaryTarget(
            name: "AATTappxAdapter",
            url:
                "https://ios-sdk.aatkit.com/AATKit_SPM/\(version).zip",
            checksum: "c1d40ba6d3d8dca45909dacf2066d2a7deac170f8bcb66207acf3ada8b7f1a39"
        )
    ]
)
