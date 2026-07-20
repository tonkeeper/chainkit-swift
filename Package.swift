// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "ChainKit",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "ChainKit",
            targets: ["ChainKit", "ChainKitSupport"]
        )
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "ChainKit",
            url: "https://github.com/tonkeeper/chainkit-swift/releases/download/0.1.9/ChainKit.xcframework.zip",
            checksum: "b5af39d7eac325d12b1f9c948bc7ebf158807871ddf47236b26c2b2668b19ed8"
        ),
        .binaryTarget(
            name: "WalletCore",
            url: "https://github.com/trustwallet/wallet-core/releases/download/4.6.0/WalletCore.xcframework.zip",
            checksum: "689935aff413004b18c7b32ee955716868ebcd38328c5159c69f0d5f5bcfddf0"
        ),
        .binaryTarget(
            name: "WalletCoreSwiftProtobuf",
            url: "https://github.com/trustwallet/wallet-core/releases/download/4.6.0/WalletCoreSwiftProtobuf.xcframework.zip",
            checksum: "719b1ebc7ad174017e399cdd7fc60372b369d9712d646ebb8b4e264c4881d1d8"
        ),
        .target(
            name: "ChainKitSupport",
            dependencies: [
                "WalletCore",
                "WalletCoreSwiftProtobuf"
            ],
            path: "Sources/ChainKitSupport"
        )
    ]
)
