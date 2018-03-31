// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct EncryptionData : EncryptionProtocol {
    public var services: EncryptionServicesProtocol?
    public var keySource: KeySourceEnum
    public var keyVaultProperties: KeyVaultPropertiesProtocol?

        enum CodingKeys: String, CodingKey {case services = "services"
        case keySource = "keySource"
        case keyVaultProperties = "keyvaultproperties"
        }

  public init(keySource: KeySourceEnum) {
    self.keySource = keySource
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.services) {
        self.services = try container.decode(EncryptionServicesData?.self, forKey: .services)
    }
    self.keySource = try container.decode(KeySourceEnum.self, forKey: .keySource)
    if container.contains(.keyVaultProperties) {
        self.keyVaultProperties = try container.decode(KeyVaultPropertiesData?.self, forKey: .keyVaultProperties)
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
    if self.services != nil { try container.encode(self.services as! EncryptionServicesData?, forKey: .services) }
    try container.encode(self.keySource, forKey: .keySource)
    if self.keyVaultProperties != nil { try container.encode(self.keyVaultProperties as! KeyVaultPropertiesData?, forKey: .keyVaultProperties) }
  }
}

extension DataFactory {
  public static func createEncryptionProtocol(keySource: KeySourceEnum) -> EncryptionProtocol {
    return EncryptionData(keySource: keySource)
  }
}
