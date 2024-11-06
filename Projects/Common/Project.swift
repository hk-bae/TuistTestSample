import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "Common",
    targets: [
        .target(
            name: "Common",
            destinations: .iOS,
            product: .staticFramework,
            bundleId: "io.tuist.Common",
            sources: ["Sources/**"],
            dependencies: []
        ),
        .target(
            name: "CommonTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.CommonTests",
            infoPlist: .default,
            sources: ["Tests/**"],
            resources: [],
            dependencies: [.target(name: "Common")]
        ),
    ]
)

