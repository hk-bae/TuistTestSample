import ProjectDescription

let workSpace = Workspace(
    name: "MyApp",
    projects: ["Projects/**"],
    generationOptions: .options(autogeneratedWorkspaceSchemes: .disabled)
)

