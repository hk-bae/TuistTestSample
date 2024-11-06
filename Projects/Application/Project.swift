import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "MyApp",
    targets: [
        .target(
            name: "MyApp",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.MyApp",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchStoryboardName": "LaunchScreen.storyboard",
                ]
            ),
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                .Module.common,
                .Module.featureA,
                .Module.featureB
            ]
        ),
        .target(
            name: "MyAppTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.MyAppTests",
            infoPlist: .default,
            sources: ["Tests/**"],
            resources: [],
            dependencies: [.target(name: "MyApp")]
        ),
        .target(
            name: "MyAppUITests",
            destinations: .iOS,
            product: .uiTests,
            bundleId: "io.tuist.MyAppUITests",
            infoPlist: .default,
            sources: ["UITests/**"],
            resources: [],
            dependencies: [.target(name: "MyApp")]
        ),
    ]
)
