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
        "CameraClient",
        "HealthClient",
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
        .product(
          name: "XCTestDynamicOverlay",
          package: "xctest-dynamic-overlay"
        ),
      ]
    ),
    .target(
      name: "CameraClient",
      dependencies: [
        .product(
          name: "Dependencies",
          package: "swift-dependencies"
        ),
        .product(
          name: "XCTestDynamicOverlay",
          package: "xctest-dynamic-overlay"
        ),
      ]
    ),
    .target(
      name: "HealthClient",
      dependencies: [
        .product(
          name: "Dependencies",
          package: "swift-dependencies"
        ),
        .product(
          name: "XCTestDynamicOverlay",
          package: "xctest-dynamic-overlay"
        ),
      ]
    ),
    .testTarget(
      name: "ApplicationClientTests",
      dependencies: [
        "ApplicationClient"
      ]
    ),
    .testTarget(
      name: "CameraClientTests",
      dependencies: [
        "CameraClient"
      ]
    ),
    .testTarget(
      name: "HealthClientTests",
      dependencies: [
        "HealthClient"
      ]
    ),
  ]
)
