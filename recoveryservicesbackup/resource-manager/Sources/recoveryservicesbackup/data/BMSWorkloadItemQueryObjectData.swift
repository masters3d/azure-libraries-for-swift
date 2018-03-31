// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct BMSWorkloadItemQueryObjectData : BMSWorkloadItemQueryObjectProtocol {
    public var backupManagementType: BackupManagementTypeEnum?
    public var workloadItemType: WorkloadItemTypeEnum?
    public var workloadType: WorkloadTypeEnum?
    public var protectionStatus: ProtectionStatusEnum?

        enum CodingKeys: String, CodingKey {case backupManagementType = "backupManagementType"
        case workloadItemType = "workloadItemType"
        case workloadType = "workloadType"
        case protectionStatus = "protectionStatus"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.backupManagementType) {
        self.backupManagementType = try container.decode(BackupManagementTypeEnum?.self, forKey: .backupManagementType)
    }
    if container.contains(.workloadItemType) {
        self.workloadItemType = try container.decode(WorkloadItemTypeEnum?.self, forKey: .workloadItemType)
    }
    if container.contains(.workloadType) {
        self.workloadType = try container.decode(WorkloadTypeEnum?.self, forKey: .workloadType)
    }
    if container.contains(.protectionStatus) {
        self.protectionStatus = try container.decode(ProtectionStatusEnum?.self, forKey: .protectionStatus)
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
    if self.workloadItemType != nil { try container.encode(self.workloadItemType, forKey: .workloadItemType) }
    if self.workloadType != nil { try container.encode(self.workloadType, forKey: .workloadType) }
    if self.protectionStatus != nil { try container.encode(self.protectionStatus, forKey: .protectionStatus) }
  }
}

extension DataFactory {
  public static func createBMSWorkloadItemQueryObjectProtocol() -> BMSWorkloadItemQueryObjectProtocol {
    return BMSWorkloadItemQueryObjectData()
  }
}
