// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct JobPreparationTaskData : JobPreparationTaskProtocol {
    public var id: String?
    public var commandLine: String
    public var containerSettings: TaskContainerSettingsProtocol?
    public var resourceFiles: [ResourceFileProtocol?]?
    public var environmentSettings: [EnvironmentSettingProtocol?]?
    public var constraints: TaskConstraintsProtocol?
    public var waitForSuccess: Bool?
    public var userIdentity: UserIdentityProtocol?
    public var rerunOnNodeRebootAfterSuccess: Bool?

        enum CodingKeys: String, CodingKey {case id = "id"
        case commandLine = "commandLine"
        case containerSettings = "containerSettings"
        case resourceFiles = "resourceFiles"
        case environmentSettings = "environmentSettings"
        case constraints = "constraints"
        case waitForSuccess = "waitForSuccess"
        case userIdentity = "userIdentity"
        case rerunOnNodeRebootAfterSuccess = "rerunOnNodeRebootAfterSuccess"
        }

  public init(commandLine: String) {
    self.commandLine = commandLine
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.id) {
        self.id = try container.decode(String?.self, forKey: .id)
    }
    self.commandLine = try container.decode(String.self, forKey: .commandLine)
    if container.contains(.containerSettings) {
        self.containerSettings = try container.decode(TaskContainerSettingsData?.self, forKey: .containerSettings)
    }
    if container.contains(.resourceFiles) {
        self.resourceFiles = try container.decode([ResourceFileData?]?.self, forKey: .resourceFiles)
    }
    if container.contains(.environmentSettings) {
        self.environmentSettings = try container.decode([EnvironmentSettingData?]?.self, forKey: .environmentSettings)
    }
    if container.contains(.constraints) {
        self.constraints = try container.decode(TaskConstraintsData?.self, forKey: .constraints)
    }
    if container.contains(.waitForSuccess) {
        self.waitForSuccess = try container.decode(Bool?.self, forKey: .waitForSuccess)
    }
    if container.contains(.userIdentity) {
        self.userIdentity = try container.decode(UserIdentityData?.self, forKey: .userIdentity)
    }
    if container.contains(.rerunOnNodeRebootAfterSuccess) {
        self.rerunOnNodeRebootAfterSuccess = try container.decode(Bool?.self, forKey: .rerunOnNodeRebootAfterSuccess)
    }
    if var pageDecoder = decoder as? PageDecoder {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if self.id != nil { try container.encode(self.id, forKey: .id) }
    try container.encode(self.commandLine, forKey: .commandLine)
    if self.containerSettings != nil { try container.encode(self.containerSettings as! TaskContainerSettingsData?, forKey: .containerSettings) }
    if self.resourceFiles != nil { try container.encode(self.resourceFiles as! [ResourceFileData?]?, forKey: .resourceFiles) }
    if self.environmentSettings != nil { try container.encode(self.environmentSettings as! [EnvironmentSettingData?]?, forKey: .environmentSettings) }
    if self.constraints != nil { try container.encode(self.constraints as! TaskConstraintsData?, forKey: .constraints) }
    if self.waitForSuccess != nil { try container.encode(self.waitForSuccess, forKey: .waitForSuccess) }
    if self.userIdentity != nil { try container.encode(self.userIdentity as! UserIdentityData?, forKey: .userIdentity) }
    if self.rerunOnNodeRebootAfterSuccess != nil { try container.encode(self.rerunOnNodeRebootAfterSuccess, forKey: .rerunOnNodeRebootAfterSuccess) }
  }
}

extension DataFactory {
  public static func createJobPreparationTaskProtocol(commandLine: String) -> JobPreparationTaskProtocol {
    return JobPreparationTaskData(commandLine: commandLine)
  }
}
