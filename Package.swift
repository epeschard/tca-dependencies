// swift-tools-version: 5.9

import PackageDescription

let package = Package(
  name: "tca_dependencies",
  platforms: [
    .macOS(.v13),
    .iOS(.v16),
    .tvOS(.v16),
    .watchOS(.v9)
  ],
  products: [
    .library(
      name: "tca_dependencies",
      targets: [
        "ApplicationClient",
      ]
    ),
  ],
  dependencies: [
    .package(url: "https://github.com/pointfreeco/swift-dependencies", from: "1.1.5"),
    .package(url: "https://github.com/pointfreeco/xctest-dynamic-overlay", from: "1.0.2"),
  ],
  targets: [
    .target(
      name: "ApplicationClient",
      dependencies: [
        .product(
          name: "Dependencies",
          package: "swift-dependencies"
        ),
      ]
    ),
    .testTarget(
      name: "ApplicationClientTests",
      dependencies: [
        "ApplicationClient"
      ]
    ),
  ]
)
