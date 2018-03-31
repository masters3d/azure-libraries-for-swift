// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct AzureVmWorkloadSQLDatabaseProtectableItemData : AzureVmWorkloadSQLDatabaseProtectableItemProtocol, AzureVmWorkloadProtectableItemProtocol, WorkloadProtectableItemProtocol {
    public var backupManagementType: String?
    public var workloadType: String?
    public var friendlyName: String?
    public var protectionState: ProtectionStatusEnum?
    public var parentName: String?
    public var parentUniqueName: String?
    public var serverName: String?
    public var isAutoProtectable: Bool?
    public var subinquireditemcount: Int32?
    public var subprotectableitemcount: Int32?
    public var prebackupvalidation: PreBackupValidationProtocol?

        enum CodingKeys: String, CodingKey {case backupManagementType = "backupManagementType"
        case workloadType = "workloadType"
        case friendlyName = "friendlyName"
        case protectionState = "protectionState"
        case parentName = "parentName"
        case parentUniqueName = "parentUniqueName"
        case serverName = "serverName"
        case isAutoProtectable = "isAutoProtectable"
        case subinquireditemcount = "subinquireditemcount"
        case subprotectableitemcount = "subprotectableitemcount"
        case prebackupvalidation = "prebackupvalidation"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.backupManagementType) {
        self.backupManagementType = try container.decode(String?.self, forKey: .backupManagementType)
    }
    if container.contains(.workloadType) {
        self.workloadType = try container.decode(String?.self, forKey: .workloadType)
    }
    if container.contains(.friendlyName) {
        self.friendlyName = try container.decode(String?.self, forKey: .friendlyName)
    }
    if container.contains(.protectionState) {
        self.protectionState = try container.decode(ProtectionStatusEnum?.self, forKey: .protectionState)
    }
    if container.contains(.parentName) {
        self.parentName = try container.decode(String?.self, forKey: .parentName)
    }
    if container.contains(.parentUniqueName) {
        self.parentUniqueName = try container.decode(String?.self, forKey: .parentUniqueName)
    }
    if container.contains(.serverName) {
        self.serverName = try container.decode(String?.self, forKey: .serverName)
    }
    if container.contains(.isAutoProtectable) {
        self.isAutoProtectable = try container.decode(Bool?.self, forKey: .isAutoProtectable)
    }
    if container.contains(.subinquireditemcount) {
        self.subinquireditemcount = try container.decode(Int32?.self, forKey: .subinquireditemcount)
    }
    if container.contains(.subprotectableitemcount) {
        self.subprotectableitemcount = try container.decode(Int32?.self, forKey: .subprotectableitemcount)
    }
    if container.contains(.prebackupvalidation) {
        self.prebackupvalidation = try container.decode(PreBackupValidationData?.self, forKey: .prebackupvalidation)
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
    if self.backupManagementType != nil {try container.encode(self.backupManagementType, forKey: .backupManagementType)}
    if self.workloadType != nil {try container.encode(self.workloadType, forKey: .workloadType)}
    if self.friendlyName != nil {try container.encode(self.friendlyName, forKey: .friendlyName)}
    if self.protectionState != nil {try container.encode(self.protectionState, forKey: .protectionState)}
    if self.parentName != nil {try container.encode(self.parentName, forKey: .parentName)}
    if self.parentUniqueName != nil {try container.encode(self.parentUniqueName, forKey: .parentUniqueName)}
    if self.serverName != nil {try container.encode(self.serverName, forKey: .serverName)}
    if self.isAutoProtectable != nil {try container.encode(self.isAutoProtectable, forKey: .isAutoProtectable)}
    if self.subinquireditemcount != nil {try container.encode(self.subinquireditemcount, forKey: .subinquireditemcount)}
    if self.subprotectableitemcount != nil {try container.encode(self.subprotectableitemcount, forKey: .subprotectableitemcount)}
    if self.prebackupvalidation != nil {try container.encode(self.prebackupvalidation as! PreBackupValidationData?, forKey: .prebackupvalidation)}
  }
}

extension DataFactory {
  public static func createAzureVmWorkloadSQLDatabaseProtectableItemProtocol() -> AzureVmWorkloadSQLDatabaseProtectableItemProtocol {
    return AzureVmWorkloadSQLDatabaseProtectableItemData()
  }
}
