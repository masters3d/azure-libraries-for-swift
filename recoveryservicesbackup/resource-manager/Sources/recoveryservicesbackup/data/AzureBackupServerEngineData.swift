// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct AzureBackupServerEngineData : AzureBackupServerEngineProtocol, BackupEngineBaseProtocol {
    public var friendlyName: String?
    public var backupManagementType: BackupManagementTypeEnum?
    public var registrationStatus: String?
    public var backupEngineState: String?
    public var healthStatus: String?
    public var canReRegister: Bool?
    public var backupEngineId: String?
    public var dpmVersion: String?
    public var azureBackupAgentVersion: String?
    public var isAzureBackupAgentUpgradeAvailable: Bool?
    public var isDpmUpgradeAvailable: Bool?
    public var extendedInfo: BackupEngineExtendedInfoProtocol?

        enum CodingKeys: String, CodingKey {case friendlyName = "friendlyName"
        case backupManagementType = "backupManagementType"
        case registrationStatus = "registrationStatus"
        case backupEngineState = "backupEngineState"
        case healthStatus = "healthStatus"
        case canReRegister = "canReRegister"
        case backupEngineId = "backupEngineId"
        case dpmVersion = "dpmVersion"
        case azureBackupAgentVersion = "azureBackupAgentVersion"
        case isAzureBackupAgentUpgradeAvailable = "isAzureBackupAgentUpgradeAvailable"
        case isDpmUpgradeAvailable = "isDpmUpgradeAvailable"
        case extendedInfo = "extendedInfo"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.friendlyName) {
        self.friendlyName = try container.decode(String?.self, forKey: .friendlyName)
    }
    if container.contains(.backupManagementType) {
        self.backupManagementType = try container.decode(BackupManagementTypeEnum?.self, forKey: .backupManagementType)
    }
    if container.contains(.registrationStatus) {
        self.registrationStatus = try container.decode(String?.self, forKey: .registrationStatus)
    }
    if container.contains(.backupEngineState) {
        self.backupEngineState = try container.decode(String?.self, forKey: .backupEngineState)
    }
    if container.contains(.healthStatus) {
        self.healthStatus = try container.decode(String?.self, forKey: .healthStatus)
    }
    if container.contains(.canReRegister) {
        self.canReRegister = try container.decode(Bool?.self, forKey: .canReRegister)
    }
    if container.contains(.backupEngineId) {
        self.backupEngineId = try container.decode(String?.self, forKey: .backupEngineId)
    }
    if container.contains(.dpmVersion) {
        self.dpmVersion = try container.decode(String?.self, forKey: .dpmVersion)
    }
    if container.contains(.azureBackupAgentVersion) {
        self.azureBackupAgentVersion = try container.decode(String?.self, forKey: .azureBackupAgentVersion)
    }
    if container.contains(.isAzureBackupAgentUpgradeAvailable) {
        self.isAzureBackupAgentUpgradeAvailable = try container.decode(Bool?.self, forKey: .isAzureBackupAgentUpgradeAvailable)
    }
    if container.contains(.isDpmUpgradeAvailable) {
        self.isDpmUpgradeAvailable = try container.decode(Bool?.self, forKey: .isDpmUpgradeAvailable)
    }
    if container.contains(.extendedInfo) {
        self.extendedInfo = try container.decode(BackupEngineExtendedInfoData?.self, forKey: .extendedInfo)
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
    if self.friendlyName != nil {try container.encode(self.friendlyName, forKey: .friendlyName)}
    if self.backupManagementType != nil {try container.encode(self.backupManagementType, forKey: .backupManagementType)}
    if self.registrationStatus != nil {try container.encode(self.registrationStatus, forKey: .registrationStatus)}
    if self.backupEngineState != nil {try container.encode(self.backupEngineState, forKey: .backupEngineState)}
    if self.healthStatus != nil {try container.encode(self.healthStatus, forKey: .healthStatus)}
    if self.canReRegister != nil {try container.encode(self.canReRegister, forKey: .canReRegister)}
    if self.backupEngineId != nil {try container.encode(self.backupEngineId, forKey: .backupEngineId)}
    if self.dpmVersion != nil {try container.encode(self.dpmVersion, forKey: .dpmVersion)}
    if self.azureBackupAgentVersion != nil {try container.encode(self.azureBackupAgentVersion, forKey: .azureBackupAgentVersion)}
    if self.isAzureBackupAgentUpgradeAvailable != nil {try container.encode(self.isAzureBackupAgentUpgradeAvailable, forKey: .isAzureBackupAgentUpgradeAvailable)}
    if self.isDpmUpgradeAvailable != nil {try container.encode(self.isDpmUpgradeAvailable, forKey: .isDpmUpgradeAvailable)}
    if self.extendedInfo != nil {try container.encode(self.extendedInfo as! BackupEngineExtendedInfoData?, forKey: .extendedInfo)}
  }
}

extension DataFactory {
  public static func createAzureBackupServerEngineProtocol() -> AzureBackupServerEngineProtocol {
    return AzureBackupServerEngineData()
  }
}
