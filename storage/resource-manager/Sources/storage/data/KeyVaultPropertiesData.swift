// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct KeyVaultPropertiesData : KeyVaultPropertiesProtocol {
    public var keyName: String?
    public var keyVersion: String?
    public var keyVaultUri: String?

        enum CodingKeys: String, CodingKey {case keyName = "keyname"
        case keyVersion = "keyversion"
        case keyVaultUri = "keyvaulturi"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.keyName) {
        self.keyName = try container.decode(String?.self, forKey: .keyName)
    }
    if container.contains(.keyVersion) {
        self.keyVersion = try container.decode(String?.self, forKey: .keyVersion)
    }
    if container.contains(.keyVaultUri) {
        self.keyVaultUri = try container.decode(String?.self, forKey: .keyVaultUri)
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
    if self.keyName != nil { try container.encode(self.keyName, forKey: .keyName) }
    if self.keyVersion != nil { try container.encode(self.keyVersion, forKey: .keyVersion) }
    if self.keyVaultUri != nil { try container.encode(self.keyVaultUri, forKey: .keyVaultUri) }
  }
}

extension DataFactory {
  public static func createKeyVaultPropertiesProtocol() -> KeyVaultPropertiesProtocol {
    return KeyVaultPropertiesData()
  }
}
