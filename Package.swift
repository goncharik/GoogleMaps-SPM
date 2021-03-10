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
            url: "https://github.com/goncharik/GoogleMaps-SPM/releases/download/4.1.1/GoogleMaps.xcframework.zip",
            checksum: "d1a2e759da9650c7535d3e9c7a730ffa8814151a6d827ca80de70d5a2bdf8712"
        ),
        .binaryTarget(
            name: "GoogleMapsBase",
            url: "https://github.com/goncharik/GoogleMaps-SPM/releases/download/4.1.1/GoogleMapsBase.xcframework.zip",
            checksum: "018a84e495bf5c64d611b8f49596be9799200ba77d630b01575e5adffcd706a5"
        ),
        .binaryTarget(
            name: "GoogleMapsCore",
            url: "https://github.com/goncharik/GoogleMaps-SPM/releases/download/4.1.1/GoogleMapsCore.xcframework.zip",
            checksum: "dabdda7ef6c93d9f61fe783a3176a5565fa9e9ff9fc01caf2e9664bd2eb3a709"
        ),
        .binaryTarget(
            name: "GoogleMapsM4B",
            url: "https://github.com/goncharik/GoogleMaps-SPM/releases/download/4.1.1/GoogleMapsM4B.xcframework.zip",
            checksum: "a9738ae2cc932c02a310b7abab4daacb1de6812efe97bb85e31147d787390660"
        ),
        .binaryTarget(
            name: "GooglePlaces",
            url: "https://github.com/goncharik/GoogleMaps-SPM/releases/download/4.1.1/GooglePlaces.xcframework.zip",
            checksum: "0d680780d6704026e82f0da0bf0ebeb0ab3cf9b608333cfc71aee45af422b28d"
        )
    ]
)
