// swift-tools-version: 6.2
//
// ChainKit 0.1.27 (Release)
// Built from 9383d648bb3e578106815dc652bd03263bf19325
// with kotlin 2.4.10 | Xcode 27.0 | iOS SDK 27.0 | wallet-core 4.6.0

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
        ),
        .library(
            name: "WalletCore",
            targets: ["WalletCore", "WalletCoreSwiftProtobuf"]
        )
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "ChainKit",
            url: "https://github.com/tonkeeper/chainkit-swift/releases/download/0.1.27/ChainKit.xcframework.zip",
            checksum: "d1548a99d070f011c13100f4e3e98b941fcc9cc0f474011463d9116f896496f6"
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
