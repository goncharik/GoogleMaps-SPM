// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "GoogleMaps",
    products: [
        .library(
            name: "GoogleMapsBase",
            targets: [
                "GoogleMapsBase"
            ]
        ),
        .library(
            name: "GoogleMapsCore",
            targets: [
                "GoogleMapsCore"
            ]
        ),
        .library(
            name: "GoogleMaps",
            targets: [
                "GoogleMaps",
                "GoogleMapsBase",
                "GoogleMapsCore"
            ]
        ),
        .library(
            name: "GoogleMapsM4B",
            targets: [
                "GoogleMapsM4B"
            ]
        ),
        .library(
            name: "GooglePlaces",
            targets: [
                "GooglePlaces",
                "GoogleMapsBase"
            ]
        )
    ],
    targets: [
        .binaryTarget(
            name: "GoogleMaps",
            url: "https://github.com/goncharik/GoogleMaps-SPM/releases/download/4.1.0/GoogleMaps.xcframework.zip",
            checksum: "40cae423b3835ab71f96c1290b0ef7bb35a474dfc4cb8c8b604467a046070c2c"
        ),
        .binaryTarget(
            name: "GoogleMapsBase",
            url: "https://github.com/goncharik/GoogleMaps-SPM/releases/download/4.1.0/GoogleMapsBase.xcframework.zip",
            checksum: "da8f41cf9526a25507a723dd2807aaa6528d11af6897b76071d0d67778d823ec"
        ),
        .binaryTarget(
            name: "GoogleMapsCore",
            url: "https://github.com/goncharik/GoogleMaps-SPM/releases/download/4.1.0/GoogleMapsCore.xcframework.zip",
            checksum: "03645840426294804817ec6b78f16e6f40e2b261abd12296730ad87f05659d1e"
        ),
        .binaryTarget(
            name: "GoogleMapsM4B",
            url: "https://github.com/goncharik/GoogleMaps-SPM/releases/download/4.1.0/GoogleMapsM4B.xcframework.zip",
            checksum: "b99e287d6561fa7c41b416818ad706f918acf7109639572ce070e2c5eddfb1b3"
        ),
        .binaryTarget(
            name: "GooglePlaces",
            url: "https://github.com/goncharik/GoogleMaps-SPM/releases/download/4.1.0/GooglePlaces.xcframework.zip",
            checksum: "b4bbf25d6664e6188ecd2c5e488d6e5f2d067cc06b63e67c4368e9bc0fd7b0d6"
        )
    ]
)
