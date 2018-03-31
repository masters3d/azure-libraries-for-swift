// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct HyperVReplicaReplicationDetailsData : HyperVReplicaReplicationDetailsProtocol, ReplicationProviderSpecificSettingsProtocol {
    public var lastReplicatedTime: Date?
    public var vmNics: [VMNicDetailsProtocol?]?
    public var vmId: String?
    public var vmProtectionState: String?
    public var vmProtectionStateDescription: String?
    public var initialReplicationDetails: InitialReplicationDetailsProtocol?
    public var vMDiskDetails: [DiskDetailsProtocol?]?

        enum CodingKeys: String, CodingKey {case lastReplicatedTime = "lastReplicatedTime"
        case vmNics = "vmNics"
        case vmId = "vmId"
        case vmProtectionState = "vmProtectionState"
        case vmProtectionStateDescription = "vmProtectionStateDescription"
        case initialReplicationDetails = "initialReplicationDetails"
        case vMDiskDetails = "vMDiskDetails"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.lastReplicatedTime) {
        self.lastReplicatedTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .lastReplicatedTime)), format: .dateTime)
    }
    if container.contains(.vmNics) {
        self.vmNics = try container.decode([VMNicDetailsData?]?.self, forKey: .vmNics)
    }
    if container.contains(.vmId) {
        self.vmId = try container.decode(String?.self, forKey: .vmId)
    }
    if container.contains(.vmProtectionState) {
        self.vmProtectionState = try container.decode(String?.self, forKey: .vmProtectionState)
    }
    if container.contains(.vmProtectionStateDescription) {
        self.vmProtectionStateDescription = try container.decode(String?.self, forKey: .vmProtectionStateDescription)
    }
    if container.contains(.initialReplicationDetails) {
        self.initialReplicationDetails = try container.decode(InitialReplicationDetailsData?.self, forKey: .initialReplicationDetails)
    }
    if container.contains(.vMDiskDetails) {
        self.vMDiskDetails = try container.decode([DiskDetailsData?]?.self, forKey: .vMDiskDetails)
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
    if self.lastReplicatedTime != nil {
        try container.encode(DateConverter.toString(date: self.lastReplicatedTime!, format: .dateTime), forKey: .lastReplicatedTime)
    }
    if self.vmNics != nil { try container.encode(self.vmNics as! [VMNicDetailsData?]?, forKey: .vmNics) }
    if self.vmId != nil { try container.encode(self.vmId, forKey: .vmId) }
    if self.vmProtectionState != nil { try container.encode(self.vmProtectionState, forKey: .vmProtectionState) }
    if self.vmProtectionStateDescription != nil { try container.encode(self.vmProtectionStateDescription, forKey: .vmProtectionStateDescription) }
    if self.initialReplicationDetails != nil { try container.encode(self.initialReplicationDetails as! InitialReplicationDetailsData?, forKey: .initialReplicationDetails) }
    if self.vMDiskDetails != nil { try container.encode(self.vMDiskDetails as! [DiskDetailsData?]?, forKey: .vMDiskDetails) }
  }
}

extension DataFactory {
  public static func createHyperVReplicaReplicationDetailsProtocol() -> HyperVReplicaReplicationDetailsProtocol {
    return HyperVReplicaReplicationDetailsData()
  }
}
