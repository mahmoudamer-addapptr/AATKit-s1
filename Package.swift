// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "3.14.0"
let package = Package(
    name: "AATKit-s1",
    platforms: [.iOS(.v12)],
    products: [
        .library(name: "AATKit-Core", targets: ["AATKit-Core"]),
        .library(name: "AATKit-FeedAd", targets: ["AATKit-FeedAd"]),
    ],
    targets: [
        // AATKit target
        .target(name:"AATKit-Core",
                dependencies: [
                    .target(name: "AATKit"),
                ],
                path: "./Sources/AATKit"),
        .target(name:"AATKit-FeedAd",
                dependencies: [
                    .target(name: "TappxFramework"),
                    .target(name: "AATFeedAdAdapter")
                ],
                path: "./Sources/FeedAdSources"),
        // Mark: Binary Targets
        // AATKit
        .binaryTarget(
            name: "AATKit",
            url:
                "https://ios-sdk.aatkit.com/AATKit_SPM/\(version).zip",
            checksum: "f2b0bb9e148a2be495a4461dd601408635d36bfe257df4053214596163379663"
        ),
        // FeedAd
        .binaryTarget(
            name: "TappxFramework",
            url:
                "https://ios-sdk.aatkit.com/AATKit_SPM/\(version).zip",
            checksum: "f2b0bb9e148a2be495a4461dd601408635d36bfe257df4053214596163379663"
        ),
        .binaryTarget(
            name: "AATFeedAdAdapter",
            url:
                "https://ios-sdk.aatkit.com/AATKit_SPM/\(version).zip",
            checksum: "f2b0bb9e148a2be495a4461dd601408635d36bfe257df4053214596163379663"
        )
    ]
)
