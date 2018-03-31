// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct HyperVReplicaAzurePolicyDetailsData : HyperVReplicaAzurePolicyDetailsProtocol, PolicyProviderSpecificDetailsProtocol {
    public var recoveryPointHistoryDurationInHours: Int32?
    public var applicationConsistentSnapshotFrequencyInHours: Int32?
    public var replicationInterval: Int32?
    public var onlineReplicationStartTime: String?
    public var encryption: String?
    public var activeStorageAccountId: String?

        enum CodingKeys: String, CodingKey {case recoveryPointHistoryDurationInHours = "recoveryPointHistoryDurationInHours"
        case applicationConsistentSnapshotFrequencyInHours = "applicationConsistentSnapshotFrequencyInHours"
        case replicationInterval = "replicationInterval"
        case onlineReplicationStartTime = "onlineReplicationStartTime"
        case encryption = "encryption"
        case activeStorageAccountId = "activeStorageAccountId"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.recoveryPointHistoryDurationInHours) {
        self.recoveryPointHistoryDurationInHours = try container.decode(Int32?.self, forKey: .recoveryPointHistoryDurationInHours)
    }
    if container.contains(.applicationConsistentSnapshotFrequencyInHours) {
        self.applicationConsistentSnapshotFrequencyInHours = try container.decode(Int32?.self, forKey: .applicationConsistentSnapshotFrequencyInHours)
    }
    if container.contains(.replicationInterval) {
        self.replicationInterval = try container.decode(Int32?.self, forKey: .replicationInterval)
    }
    if container.contains(.onlineReplicationStartTime) {
        self.onlineReplicationStartTime = try container.decode(String?.self, forKey: .onlineReplicationStartTime)
    }
    if container.contains(.encryption) {
        self.encryption = try container.decode(String?.self, forKey: .encryption)
    }
    if container.contains(.activeStorageAccountId) {
        self.activeStorageAccountId = try container.decode(String?.self, forKey: .activeStorageAccountId)
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
    if self.recoveryPointHistoryDurationInHours != nil { try container.encode(self.recoveryPointHistoryDurationInHours, forKey: .recoveryPointHistoryDurationInHours) }
    if self.applicationConsistentSnapshotFrequencyInHours != nil { try container.encode(self.applicationConsistentSnapshotFrequencyInHours, forKey: .applicationConsistentSnapshotFrequencyInHours) }
    if self.replicationInterval != nil { try container.encode(self.replicationInterval, forKey: .replicationInterval) }
    if self.onlineReplicationStartTime != nil { try container.encode(self.onlineReplicationStartTime, forKey: .onlineReplicationStartTime) }
    if self.encryption != nil { try container.encode(self.encryption, forKey: .encryption) }
    if self.activeStorageAccountId != nil { try container.encode(self.activeStorageAccountId, forKey: .activeStorageAccountId) }
  }
}

extension DataFactory {
  public static func createHyperVReplicaAzurePolicyDetailsProtocol() -> HyperVReplicaAzurePolicyDetailsProtocol {
    return HyperVReplicaAzurePolicyDetailsData()
  }
}
