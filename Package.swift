// swift-tools-version: 6.3

import PackageDescription

/// Settings applied globally in the package.
let swiftSettings: [SwiftSetting] = [
  .enableUpcomingFeature("ApproachableConcurrency")
]

let package = Package(
  name: "swift-chess",

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
