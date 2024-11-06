import ProjectDescription

let project = Project(
    name: "FeatureA",
    targets: [
        .target(
            name: "FeatureA",
            destinations: .iOS,
            product: .staticFramework,
            bundleId: "io.tuist.FeatureA",
            sources: ["Sources/**"],
            dependencies: []
        ),
        .target(
            name: "FeatureATests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.FeatureATests",
            infoPlist: .default,
            sources: ["Tests/**"],
            resources: [],
            dependencies: [.target(name: "FeatureA")]
        ),
    ]
)
