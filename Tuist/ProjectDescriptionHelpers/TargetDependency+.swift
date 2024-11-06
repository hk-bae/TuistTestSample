import ProjectDescription

extension TargetDependency {
    public struct Module {
        public static let common: TargetDependency = .project(target: "Common", path: .relativeToRoot("Projects/Common"))
        public static let featureA: TargetDependency = .project(target: "FeatureA", path: .relativeToRoot("Projects/FeatureA"))
        public static let featureB: TargetDependency = .project(target: "FeatureB", path: .relativeToRoot("Projects/FeatureB"))
    }
}

