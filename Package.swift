// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "naveridlogin-ios-sp",
    platforms: [.iOS(.v12)],
    products: [
        .library(name: "naveridlogin-ios-sp", targets: ["naveridlogin-ios-sp"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(name: "NaverThirdPartyLogin", path: "./Frameworks/NaverThirdPartyLogin.xcframework"),
        .target(name: "naveridlogin-ios-sp", dependencies: ["NaverThirdPartyLogin"]),
    ]
)
