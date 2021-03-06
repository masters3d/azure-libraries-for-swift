// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct PreValidateEnableBackupRequestData : PreValidateEnableBackupRequestProtocol {
    public var resourceType: DataSourceTypeEnum?
    public var resourceId: String?
    public var vaultId: String?
    public var properties: String?

        enum CodingKeys: String, CodingKey {case resourceType = "resourceType"
        case resourceId = "resourceId"
        case vaultId = "vaultId"
        case properties = "properties"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.resourceType) {
        self.resourceType = try container.decode(DataSourceTypeEnum?.self, forKey: .resourceType)
    }
    if container.contains(.resourceId) {
        self.resourceId = try container.decode(String?.self, forKey: .resourceId)
    }
    if container.contains(.vaultId) {
        self.vaultId = try container.decode(String?.self, forKey: .vaultId)
    }
    if container.contains(.properties) {
        self.properties = try container.decode(String?.self, forKey: .properties)
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
    if self.resourceType != nil {try container.encode(self.resourceType, forKey: .resourceType)}
    if self.resourceId != nil {try container.encode(self.resourceId, forKey: .resourceId)}
    if self.vaultId != nil {try container.encode(self.vaultId, forKey: .vaultId)}
    if self.properties != nil {try container.encode(self.properties, forKey: .properties)}
  }
}

extension DataFactory {
  public static func createPreValidateEnableBackupRequestProtocol() -> PreValidateEnableBackupRequestProtocol {
    return PreValidateEnableBackupRequestData()
  }
}
