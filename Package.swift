// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "AnyThinkMediationVungleAdapter",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AnyThinkMediationVungleAdapter",
            targets: ["AnyThinkMediationVungleAdapterTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/TakuMediation-packages/AnyThinkiOS_SPM.git", from: "6.5.60"),
        .package(url: "https://github.com/Vungle/VungleAdsSDK-SwiftPackageManager.git", exact: "7.7.6")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkVungleAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/AnyThink_Release/iosnetwork_2/AnyThinkVungleAdapter/7.7.6.2.0/AnyThinkVungleAdapter-7.7.6.2.0.zip",
            checksum: "fb8368a9840b55a08e1ddc2bf3dff416fc1a379ab099fa6416d7ac0bcf589209"
        ),
        .target(
            name: "AnyThinkMediationVungleAdapterTarget",
            dependencies: [
                "AnyThinkVungleAdapter",
                .product(name: "AnyThinkiOS", package: "AnyThinkiOS_SPM"),
                .product(name: "VungleAdsSDK", package: "VungleAdsSDK-SwiftPackageManager")
            ],
            path: "Sources/AnyThinkMediationVungleAdapterTarget"
        )
    ]
)
