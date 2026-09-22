// swift-tools-version: 5.9
// 此文件由 AdsEye 第三方 SPM 镜像流程生成，请勿手工修改 checksum。
import PackageDescription

let package = Package(
    name: "TPExchange",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "TPExchange", targets: ["TPExchangeWrapper"])
    ],
    dependencies: [
        
    ],
    targets: [
        .target(
            name: "TPExchangeWrapper",
            dependencies: [
                .target(name: "TPExchange")
            ],
            linkerSettings: [
                .linkedFramework("CoreGraphics"),
                .linkedFramework("Foundation"),
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("UIKit")
            ]
        ),
        .binaryTarget(
    name: "TPExchange",
    url: "https://github.com/AdsEye/AdsEyeSPM-TPExchange/releases/download/13.8.60/TPExchange-13.8.60.zip",
    checksum: "608dc76554b6dfc90f35d9419a2663c6c8be6dc540bf64b4fe61e674bbd34598"
)
    ]
)
