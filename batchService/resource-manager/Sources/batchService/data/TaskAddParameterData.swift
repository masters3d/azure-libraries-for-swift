// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct TaskAddParameterData : TaskAddParameterProtocol {
    public var id: String
    public var displayName: String?
    public var commandLine: String
    public var containerSettings: TaskContainerSettingsProtocol?
    public var exitConditions: ExitConditionsProtocol?
    public var resourceFiles: [ResourceFileProtocol?]?
    public var outputFiles: [OutputFileProtocol?]?
    public var environmentSettings: [EnvironmentSettingProtocol?]?
    public var affinityInfo: AffinityInformationProtocol?
    public var constraints: TaskConstraintsProtocol?
    public var userIdentity: UserIdentityProtocol?
    public var multiInstanceSettings: MultiInstanceSettingsProtocol?
    public var dependsOn: TaskDependenciesProtocol?
    public var applicationPackageReferences: [ApplicationPackageReferenceProtocol?]?
    public var authenticationTokenSettings: AuthenticationTokenSettingsProtocol?

        enum CodingKeys: String, CodingKey {case id = "id"
        case displayName = "displayName"
        case commandLine = "commandLine"
        case containerSettings = "containerSettings"
        case exitConditions = "exitConditions"
        case resourceFiles = "resourceFiles"
        case outputFiles = "outputFiles"
        case environmentSettings = "environmentSettings"
        case affinityInfo = "affinityInfo"
        case constraints = "constraints"
        case userIdentity = "userIdentity"
        case multiInstanceSettings = "multiInstanceSettings"
        case dependsOn = "dependsOn"
        case applicationPackageReferences = "applicationPackageReferences"
        case authenticationTokenSettings = "authenticationTokenSettings"
        }

  public init(id: String, commandLine: String)  {
    self.id = id
    self.commandLine = commandLine
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.id = try container.decode(String.self, forKey: .id)
    if container.contains(.displayName) {
        self.displayName = try container.decode(String?.self, forKey: .displayName)
    }
    self.commandLine = try container.decode(String.self, forKey: .commandLine)
    if container.contains(.containerSettings) {
        self.containerSettings = try container.decode(TaskContainerSettingsData?.self, forKey: .containerSettings)
    }
    if container.contains(.exitConditions) {
        self.exitConditions = try container.decode(ExitConditionsData?.self, forKey: .exitConditions)
    }
    if container.contains(.resourceFiles) {
        self.resourceFiles = try container.decode([ResourceFileData?]?.self, forKey: .resourceFiles)
    }
    if container.contains(.outputFiles) {
        self.outputFiles = try container.decode([OutputFileData?]?.self, forKey: .outputFiles)
    }
    if container.contains(.environmentSettings) {
        self.environmentSettings = try container.decode([EnvironmentSettingData?]?.self, forKey: .environmentSettings)
    }
    if container.contains(.affinityInfo) {
        self.affinityInfo = try container.decode(AffinityInformationData?.self, forKey: .affinityInfo)
    }
    if container.contains(.constraints) {
        self.constraints = try container.decode(TaskConstraintsData?.self, forKey: .constraints)
    }
    if container.contains(.userIdentity) {
        self.userIdentity = try container.decode(UserIdentityData?.self, forKey: .userIdentity)
    }
    if container.contains(.multiInstanceSettings) {
        self.multiInstanceSettings = try container.decode(MultiInstanceSettingsData?.self, forKey: .multiInstanceSettings)
    }
    if container.contains(.dependsOn) {
        self.dependsOn = try container.decode(TaskDependenciesData?.self, forKey: .dependsOn)
    }
    if container.contains(.applicationPackageReferences) {
        self.applicationPackageReferences = try container.decode([ApplicationPackageReferenceData?]?.self, forKey: .applicationPackageReferences)
    }
    if container.contains(.authenticationTokenSettings) {
        self.authenticationTokenSettings = try container.decode(AuthenticationTokenSettingsData?.self, forKey: .authenticationTokenSettings)
    }
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.id, forKey: .id)
    if self.displayName != nil {try container.encode(self.displayName, forKey: .displayName)}
    try container.encode(self.commandLine, forKey: .commandLine)
    if self.containerSettings != nil {try container.encode(self.containerSettings as! TaskContainerSettingsData?, forKey: .containerSettings)}
    if self.exitConditions != nil {try container.encode(self.exitConditions as! ExitConditionsData?, forKey: .exitConditions)}
    if self.resourceFiles != nil {try container.encode(self.resourceFiles as! [ResourceFileData?]?, forKey: .resourceFiles)}
    if self.outputFiles != nil {try container.encode(self.outputFiles as! [OutputFileData?]?, forKey: .outputFiles)}
    if self.environmentSettings != nil {try container.encode(self.environmentSettings as! [EnvironmentSettingData?]?, forKey: .environmentSettings)}
    if self.affinityInfo != nil {try container.encode(self.affinityInfo as! AffinityInformationData?, forKey: .affinityInfo)}
    if self.constraints != nil {try container.encode(self.constraints as! TaskConstraintsData?, forKey: .constraints)}
    if self.userIdentity != nil {try container.encode(self.userIdentity as! UserIdentityData?, forKey: .userIdentity)}
    if self.multiInstanceSettings != nil {try container.encode(self.multiInstanceSettings as! MultiInstanceSettingsData?, forKey: .multiInstanceSettings)}
    if self.dependsOn != nil {try container.encode(self.dependsOn as! TaskDependenciesData?, forKey: .dependsOn)}
    if self.applicationPackageReferences != nil {try container.encode(self.applicationPackageReferences as! [ApplicationPackageReferenceData?]?, forKey: .applicationPackageReferences)}
    if self.authenticationTokenSettings != nil {try container.encode(self.authenticationTokenSettings as! AuthenticationTokenSettingsData?, forKey: .authenticationTokenSettings)}
  }
}

extension DataFactory {
  public static func createTaskAddParameterProtocol(id: String, commandLine: String) -> TaskAddParameterProtocol {
    return TaskAddParameterData(id: id, commandLine: commandLine)
  }
}
