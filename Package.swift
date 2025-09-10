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
            checksum: "fa7982d051fc86ae2a0e342f763928808b5d1b3e7797354a8070ab6c7ea628a4"
        ),
        // FeedAd
        .binaryTarget(
            name: "TappxFramework",
            url:
                "https://ios-sdk.aatkit.com/AATKit_SPM/\(version).zip",
            checksum: "fa7982d051fc86ae2a0e342f763928808b5d1b3e7797354a8070ab6c7ea628a4"
        ),
        .binaryTarget(
            name: "AATTappxAdapter",
            url:
                "https://ios-sdk.aatkit.com/AATKit_SPM/\(version).zip",
            checksum: "fa7982d051fc86ae2a0e342f763928808b5d1b3e7797354a8070ab6c7ea628a4"
        )
    ]
)
