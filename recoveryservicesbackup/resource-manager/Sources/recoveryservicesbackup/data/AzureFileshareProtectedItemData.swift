// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct AzureFileshareProtectedItemData : AzureFileshareProtectedItemProtocol, ProtectedItemProtocol {
    public var backupManagementType: BackupManagementTypeEnum?
    public var workloadType: DataSourceTypeEnum?
    public var containerName: String?
    public var sourceResourceId: String?
    public var policyId: String?
    public var lastRecoveryPoint: Date?
    public var backupSetName: String?
    public var friendlyName: String?
    public var protectionStatus: String?
    public var protectionState: ProtectionStateEnum?
    public var healthStatus: HealthStatusEnum?
    public var lastBackupStatus: String?
    public var lastBackupTime: Date?
    public var extendedInfo: AzureFileshareProtectedItemExtendedInfoProtocol?

        enum CodingKeys: String, CodingKey {case backupManagementType = "backupManagementType"
        case workloadType = "workloadType"
        case containerName = "containerName"
        case sourceResourceId = "sourceResourceId"
        case policyId = "policyId"
        case lastRecoveryPoint = "lastRecoveryPoint"
        case backupSetName = "backupSetName"
        case friendlyName = "friendlyName"
        case protectionStatus = "protectionStatus"
        case protectionState = "protectionState"
        case healthStatus = "healthStatus"
        case lastBackupStatus = "lastBackupStatus"
        case lastBackupTime = "lastBackupTime"
        case extendedInfo = "extendedInfo"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.backupManagementType) {
        self.backupManagementType = try container.decode(BackupManagementTypeEnum?.self, forKey: .backupManagementType)
    }
    if container.contains(.workloadType) {
        self.workloadType = try container.decode(DataSourceTypeEnum?.self, forKey: .workloadType)
    }
    if container.contains(.containerName) {
        self.containerName = try container.decode(String?.self, forKey: .containerName)
    }
    if container.contains(.sourceResourceId) {
        self.sourceResourceId = try container.decode(String?.self, forKey: .sourceResourceId)
    }
    if container.contains(.policyId) {
        self.policyId = try container.decode(String?.self, forKey: .policyId)
    }
    if container.contains(.lastRecoveryPoint) {
        self.lastRecoveryPoint = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .lastRecoveryPoint)), format: .dateTime)
    }
    if container.contains(.backupSetName) {
        self.backupSetName = try container.decode(String?.self, forKey: .backupSetName)
    }
    if container.contains(.friendlyName) {
        self.friendlyName = try container.decode(String?.self, forKey: .friendlyName)
    }
    if container.contains(.protectionStatus) {
        self.protectionStatus = try container.decode(String?.self, forKey: .protectionStatus)
    }
    if container.contains(.protectionState) {
        self.protectionState = try container.decode(ProtectionStateEnum?.self, forKey: .protectionState)
    }
    if container.contains(.healthStatus) {
        self.healthStatus = try container.decode(HealthStatusEnum?.self, forKey: .healthStatus)
    }
    if container.contains(.lastBackupStatus) {
        self.lastBackupStatus = try container.decode(String?.self, forKey: .lastBackupStatus)
    }
    if container.contains(.lastBackupTime) {
        self.lastBackupTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .lastBackupTime)), format: .dateTime)
    }
    if container.contains(.extendedInfo) {
        self.extendedInfo = try container.decode(AzureFileshareProtectedItemExtendedInfoData?.self, forKey: .extendedInfo)
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
    if self.backupManagementType != nil { try container.encode(self.backupManagementType, forKey: .backupManagementType) }
    if self.workloadType != nil { try container.encode(self.workloadType, forKey: .workloadType) }
    if self.containerName != nil { try container.encode(self.containerName, forKey: .containerName) }
    if self.sourceResourceId != nil { try container.encode(self.sourceResourceId, forKey: .sourceResourceId) }
    if self.policyId != nil { try container.encode(self.policyId, forKey: .policyId) }
    if self.lastRecoveryPoint != nil {
        try container.encode(DateConverter.toString(date: self.lastRecoveryPoint!, format: .dateTime), forKey: .lastRecoveryPoint)
    }
    if self.backupSetName != nil { try container.encode(self.backupSetName, forKey: .backupSetName) }
    if self.friendlyName != nil { try container.encode(self.friendlyName, forKey: .friendlyName) }
    if self.protectionStatus != nil { try container.encode(self.protectionStatus, forKey: .protectionStatus) }
    if self.protectionState != nil { try container.encode(self.protectionState, forKey: .protectionState) }
    if self.healthStatus != nil { try container.encode(self.healthStatus, forKey: .healthStatus) }
    if self.lastBackupStatus != nil { try container.encode(self.lastBackupStatus, forKey: .lastBackupStatus) }
    if self.lastBackupTime != nil {
        try container.encode(DateConverter.toString(date: self.lastBackupTime!, format: .dateTime), forKey: .lastBackupTime)
    }
    if self.extendedInfo != nil { try container.encode(self.extendedInfo as! AzureFileshareProtectedItemExtendedInfoData?, forKey: .extendedInfo) }
  }
}

extension DataFactory {
  public static func createAzureFileshareProtectedItemProtocol() -> AzureFileshareProtectedItemProtocol {
    return AzureFileshareProtectedItemData()
  }
}
