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
            checksum: "8186798620fe8b69eec3d56376fe87f4dd8678b14e639c3b365d064b17ba7001"
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
