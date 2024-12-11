// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CounterTemplate",

    platforms: [
        .macOS(.v14),
        .iOS(.v13),
        .tvOS(.v13),
    ],

    dependencies: [
        .package(
            url: "https://github.com/ShaftUI/Shaft",
            branch: "main"
        )
    ],

    targets: [
        .executableTarget(
            name: "CounterTemplate",
            dependencies: [
                .product(name: "Shaft", package: "Shaft")
            ],
            swiftSettings: [
                .interoperabilityMode(.Cxx)  // This is necessary to use the Skia renderer
            ],
            linkerSettings: [
                .unsafeFlags(["-L.shaft/skia"])  // This is necessary to use the Skia renderer
            ]
        )
    ],
    cxxLanguageStandard: .cxx17  // This is necessary to use the Skia renderer
)
