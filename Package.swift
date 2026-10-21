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
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/AnyThink_Release/iosnetwork_2/AnyThinkVungleAdapter/7.7.7.2.9/AnyThinkVungleAdapter-7.7.7.2.9.zip",
            checksum: "9b812760bd37256adf7c88b97238b661346a3704a4171256c4d5dd2888d0b29f"
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
