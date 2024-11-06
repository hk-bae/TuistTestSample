import ProjectDescription

let project = Project(
    name: "FeatureB",
    targets: [
        .target(
            name: "FeatureB",
            destinations: .iOS,
            product: .staticFramework,
            bundleId: "io.tuist.FeatureB",
            sources: ["Sources/**"],
            dependencies: []
        ),
        .target(
            name: "FeatureBTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.FeatureBTests",
            infoPlist: .default,
            sources: ["Tests/**"],
            resources: [],
            dependencies: [.target(name: "FeatureB")]
        ),
    ]
)
