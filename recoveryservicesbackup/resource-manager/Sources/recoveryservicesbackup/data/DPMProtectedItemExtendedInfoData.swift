// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct DPMProtectedItemExtendedInfoData : DPMProtectedItemExtendedInfoProtocol {
    public var protectableObjectLoadPath: [String:String]?
    public var protected: Bool?
    public var isPresentOnCloud: Bool?
    public var lastBackupStatus: String?
    public var lastRefreshedAt: Date?
    public var oldestRecoveryPoint: Date?
    public var recoveryPointCount: Int32?
    public var onPremiseOldestRecoveryPoint: Date?
    public var onPremiseLatestRecoveryPoint: Date?
    public var onPremiseRecoveryPointCount: Int32?
    public var isCollocated: Bool?
    public var protectionGroupName: String?
    public var diskStorageUsedInBytes: String?
    public var totalDiskStorageSizeInBytes: String?

        enum CodingKeys: String, CodingKey {case protectableObjectLoadPath = "protectableObjectLoadPath"
        case protected = "protected"
        case isPresentOnCloud = "isPresentOnCloud"
        case lastBackupStatus = "lastBackupStatus"
        case lastRefreshedAt = "lastRefreshedAt"
        case oldestRecoveryPoint = "oldestRecoveryPoint"
        case recoveryPointCount = "recoveryPointCount"
        case onPremiseOldestRecoveryPoint = "onPremiseOldestRecoveryPoint"
        case onPremiseLatestRecoveryPoint = "onPremiseLatestRecoveryPoint"
        case onPremiseRecoveryPointCount = "onPremiseRecoveryPointCount"
        case isCollocated = "isCollocated"
        case protectionGroupName = "protectionGroupName"
        case diskStorageUsedInBytes = "diskStorageUsedInBytes"
        case totalDiskStorageSizeInBytes = "totalDiskStorageSizeInBytes"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.protectableObjectLoadPath) {
        self.protectableObjectLoadPath = try container.decode([String:String]?.self, forKey: .protectableObjectLoadPath)
    }
    if container.contains(.protected) {
        self.protected = try container.decode(Bool?.self, forKey: .protected)
    }
    if container.contains(.isPresentOnCloud) {
        self.isPresentOnCloud = try container.decode(Bool?.self, forKey: .isPresentOnCloud)
    }
    if container.contains(.lastBackupStatus) {
        self.lastBackupStatus = try container.decode(String?.self, forKey: .lastBackupStatus)
    }
    if container.contains(.lastRefreshedAt) {
        self.lastRefreshedAt = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .lastRefreshedAt)), format: .dateTime)
    }
    if container.contains(.oldestRecoveryPoint) {
        self.oldestRecoveryPoint = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .oldestRecoveryPoint)), format: .dateTime)
    }
    if container.contains(.recoveryPointCount) {
        self.recoveryPointCount = try container.decode(Int32?.self, forKey: .recoveryPointCount)
    }
    if container.contains(.onPremiseOldestRecoveryPoint) {
        self.onPremiseOldestRecoveryPoint = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .onPremiseOldestRecoveryPoint)), format: .dateTime)
    }
    if container.contains(.onPremiseLatestRecoveryPoint) {
        self.onPremiseLatestRecoveryPoint = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .onPremiseLatestRecoveryPoint)), format: .dateTime)
    }
    if container.contains(.onPremiseRecoveryPointCount) {
        self.onPremiseRecoveryPointCount = try container.decode(Int32?.self, forKey: .onPremiseRecoveryPointCount)
    }
    if container.contains(.isCollocated) {
        self.isCollocated = try container.decode(Bool?.self, forKey: .isCollocated)
    }
    if container.contains(.protectionGroupName) {
        self.protectionGroupName = try container.decode(String?.self, forKey: .protectionGroupName)
    }
    if container.contains(.diskStorageUsedInBytes) {
        self.diskStorageUsedInBytes = try container.decode(String?.self, forKey: .diskStorageUsedInBytes)
    }
    if container.contains(.totalDiskStorageSizeInBytes) {
        self.totalDiskStorageSizeInBytes = try container.decode(String?.self, forKey: .totalDiskStorageSizeInBytes)
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
    if self.protectableObjectLoadPath != nil {try container.encode(self.protectableObjectLoadPath, forKey: .protectableObjectLoadPath)}
    if self.protected != nil {try container.encode(self.protected, forKey: .protected)}
    if self.isPresentOnCloud != nil {try container.encode(self.isPresentOnCloud, forKey: .isPresentOnCloud)}
    if self.lastBackupStatus != nil {try container.encode(self.lastBackupStatus, forKey: .lastBackupStatus)}
    if self.lastRefreshedAt != nil {
        try container.encode(DateConverter.toString(date: self.lastRefreshedAt!, format: .dateTime), forKey: .lastRefreshedAt)
    }
    if self.oldestRecoveryPoint != nil {
        try container.encode(DateConverter.toString(date: self.oldestRecoveryPoint!, format: .dateTime), forKey: .oldestRecoveryPoint)
    }
    if self.recoveryPointCount != nil {try container.encode(self.recoveryPointCount, forKey: .recoveryPointCount)}
    if self.onPremiseOldestRecoveryPoint != nil {
        try container.encode(DateConverter.toString(date: self.onPremiseOldestRecoveryPoint!, format: .dateTime), forKey: .onPremiseOldestRecoveryPoint)
    }
    if self.onPremiseLatestRecoveryPoint != nil {
        try container.encode(DateConverter.toString(date: self.onPremiseLatestRecoveryPoint!, format: .dateTime), forKey: .onPremiseLatestRecoveryPoint)
    }
    if self.onPremiseRecoveryPointCount != nil {try container.encode(self.onPremiseRecoveryPointCount, forKey: .onPremiseRecoveryPointCount)}
    if self.isCollocated != nil {try container.encode(self.isCollocated, forKey: .isCollocated)}
    if self.protectionGroupName != nil {try container.encode(self.protectionGroupName, forKey: .protectionGroupName)}
    if self.diskStorageUsedInBytes != nil {try container.encode(self.diskStorageUsedInBytes, forKey: .diskStorageUsedInBytes)}
    if self.totalDiskStorageSizeInBytes != nil {try container.encode(self.totalDiskStorageSizeInBytes, forKey: .totalDiskStorageSizeInBytes)}
  }
}

extension DataFactory {
  public static func createDPMProtectedItemExtendedInfoProtocol() -> DPMProtectedItemExtendedInfoProtocol {
    return DPMProtectedItemExtendedInfoData()
  }
}
