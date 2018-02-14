// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ProtectionPolicyQueryObjectData : ProtectionPolicyQueryObjectProtocol {
    public var backupManagementType: BackupManagementTypeEnum?
    public var fabricName: String?

        enum CodingKeys: String, CodingKey {case backupManagementType = "backupManagementType"
        case fabricName = "fabricName"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.backupManagementType) {
        self.backupManagementType = try container.decode(BackupManagementTypeEnum?.self, forKey: .backupManagementType)
    }
    if container.contains(.fabricName) {
        self.fabricName = try container.decode(String?.self, forKey: .fabricName)
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
    if self.fabricName != nil {try container.encode(self.fabricName, forKey: .fabricName)}
  }
}

extension DataFactory {
  public static func createProtectionPolicyQueryObjectProtocol() -> ProtectionPolicyQueryObjectProtocol {
    return ProtectionPolicyQueryObjectData()
  }
}
