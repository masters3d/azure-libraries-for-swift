// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// TaskAddParameterProtocol is
public protocol TaskAddParameterProtocol : Codable {
     var id: String { get set }
     var displayName: String? { get set }
     var commandLine: String { get set }
     var containerSettings: TaskContainerSettingsProtocol? { get set }
     var exitConditions: ExitConditionsProtocol? { get set }
     var resourceFiles: [ResourceFileProtocol?]? { get set }
     var outputFiles: [OutputFileProtocol?]? { get set }
     var environmentSettings: [EnvironmentSettingProtocol?]? { get set }
     var affinityInfo: AffinityInformationProtocol? { get set }
     var constraints: TaskConstraintsProtocol? { get set }
     var userIdentity: UserIdentityProtocol? { get set }
     var multiInstanceSettings: MultiInstanceSettingsProtocol? { get set }
     var dependsOn: TaskDependenciesProtocol? { get set }
     var applicationPackageReferences: [ApplicationPackageReferenceProtocol?]? { get set }
     var authenticationTokenSettings: AuthenticationTokenSettingsProtocol? { get set }
}
