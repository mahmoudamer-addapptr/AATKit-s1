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
            checksum: "da47fe8cbb70c13972aa7d49833b1120742a6542656436164cf8a334170d6ecb"
        ),
        // FeedAd
        .binaryTarget(
            name: "TappxFramework",
            url:
                "https://ios-sdk.aatkit.com/AATKit_SPM/\(version).zip",
            checksum: "917fa7e5df22c86da30e861966e2c43c83809642d4953091c9af53179965d266"
        ),
        .binaryTarget(
            name: "AATTappxAdapter",
            url:
                "https://ios-sdk.aatkit.com/AATKit_SPM/\(version).zip",
            checksum: "e8513cdebc1580adfa6ee45978711ff5062541e0d3e45f3579f714d80d7f51ab"
        )
    ]
)
