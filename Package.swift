// swift-tools-version: 6.3

import PackageDescription

/// Settings applied globally in the package.
let swiftSettings: [SwiftSetting] = [
  .enableUpcomingFeature("ApproachableConcurrency")
]

let package = Package(
  name: "swift-chess",
  platforms: [
    .iOS(.v18),
    .macOS(.v15),
    .macCatalyst(.v18),
    .tvOS(.v18),
    .visionOS(.v2),
    .watchOS(.v11),
  ],
  targets: [
    .target(  // <- Logic,
      name: "Chess",
      swiftSettings: swiftSettings
    ),
    .executableTarget(  // <- Command-line tool
      name: "ChessCMD",
      swiftSettings: swiftSettings
    ),
    .testTarget(  // <- Tests for logic
      name: "ChessTests",
      dependencies: ["Chess"],
      swiftSettings: swiftSettings
    ),
  ],
  swiftLanguageModes: [.v6]
)
