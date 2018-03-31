// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ProtectableContainerData : ProtectableContainerProtocol {
    public var friendlyName: String?
    public var backupManagementType: BackupManagementTypeEnum?
    public var healthStatus: String?
    public var containerId: String?

        enum CodingKeys: String, CodingKey {case friendlyName = "friendlyName"
        case backupManagementType = "backupManagementType"
        case healthStatus = "healthStatus"
        case containerId = "containerId"
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
    if container.contains(.healthStatus) {
        self.healthStatus = try container.decode(String?.self, forKey: .healthStatus)
    }
    if container.contains(.containerId) {
        self.containerId = try container.decode(String?.self, forKey: .containerId)
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
    if self.healthStatus != nil {try container.encode(self.healthStatus, forKey: .healthStatus)}
    if self.containerId != nil {try container.encode(self.containerId, forKey: .containerId)}
  }
}

extension DataFactory {
  public static func createProtectableContainerProtocol() -> ProtectableContainerProtocol {
    return ProtectableContainerData()
  }
}
