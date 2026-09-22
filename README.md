# TPExchange Swift Package

`TPExchange` 13.8.60 的 Swift Package Manager 二进制镜像，由 AdsEye 维护。

> 本仓库不是供应商官方 SPM 仓库。二进制来自供应商 CocoaPods 13.8.60 版本，来源和许可信息见 [ThirdPartyNotices.md](ThirdPartyNotices.md)。

## 环境要求

- iOS 13.0 或更高版本
- Xcode 15.0 或更高版本
- Swift Package tag：`13.8.60`

## 通过 Xcode 接入

1. 打开工程，选择 **File > Add Package Dependencies...**。
2. 输入仓库地址：`https://github.com/AdsEye/AdsEyeSPM-TPExchange.git`。
3. Dependency Rule 选择 **Exact Version**，版本填写 `13.8.60`。
4. 将 product `TPExchange` 添加到媒体 App target。

## 通过 Package.swift 接入

```swift
dependencies: [
    .package(url: "https://github.com/AdsEye/AdsEyeSPM-TPExchange.git", exact: "13.8.60")
],
targets: [
    .target(
        name: "YourTarget",
        dependencies: [
            .product(name: "TPExchange", package: "adseyespm-tpexchange")
        ]
    )
]
```

## App 根目录资源

SwiftPM 不能把 Package 资源直接复制到宿主 App 根目录。请从本仓库 `RootResources/` 下载并将以下 bundle 添加到 App target 的 **Copy Bundle Resources**：

- `TradPlusADX.bundle`

最终产物必须是 `YourApp.app/<BundleName>.bundle`，不能位于 SwiftPM 自动生成的外层资源 bundle 中。

## Binary targets

- `TPExchange`

## 许可证

使用本软件包前请阅读 [ThirdPartyNotices.md](ThirdPartyNotices.md)，并遵守供应商许可及服务条款。
