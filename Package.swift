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
            url: "https://github.com/goncharik/GoogleMaps-SPM/releases/download/4.1.2/GoogleMaps.xcframework.zip",
            checksum: "2b416db268de6723c916fd06f79a5ed09823251a191e371849c2f42355ad0d60"
        ),
        .binaryTarget(
            name: "GoogleMapsBase",
            url: "https://github.com/goncharik/GoogleMaps-SPM/releases/download/4.1.2/GoogleMapsBase.xcframework.zip",
            checksum: "49eac12cc889171053437fb8ca1f0de62fdbf847df248ea1db210607a16af940"
        ),
        .binaryTarget(
            name: "GoogleMapsCore",
            url: "https://github.com/goncharik/GoogleMaps-SPM/releases/download/4.1.2/GoogleMapsCore.xcframework.zip",
            checksum: "8ee6b227f39cd7e5be7b591b74cb9d9f9e7397bb2b981abb872786abde096110"
        ),
        .binaryTarget(
            name: "GoogleMapsM4B",
            url: "https://github.com/goncharik/GoogleMaps-SPM/releases/download/4.1.2/GoogleMapsM4B.xcframework.zip",
            checksum: "26dea3aab7180447aad4cca2b6d4f097ee14d149eece530b9c3d21ee3305ba29"
        ),
        .binaryTarget(
            name: "GooglePlaces",
            url: "https://github.com/goncharik/GoogleMaps-SPM/releases/download/4.1.2/GooglePlaces.xcframework.zip",
            checksum: "7ad01ecca12d2fecddb87a5d955e63c530e7d64d7830d8b64269e112cbad6549"
        )
    ]
)
