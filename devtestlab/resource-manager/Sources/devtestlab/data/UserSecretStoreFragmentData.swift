// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct UserSecretStoreFragmentData : UserSecretStoreFragmentProtocol {
    public var keyVaultUri: String?
    public var keyVaultId: String?

        enum CodingKeys: String, CodingKey {case keyVaultUri = "keyVaultUri"
        case keyVaultId = "keyVaultId"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.keyVaultUri) {
        self.keyVaultUri = try container.decode(String?.self, forKey: .keyVaultUri)
    }
    if container.contains(.keyVaultId) {
        self.keyVaultId = try container.decode(String?.self, forKey: .keyVaultId)
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
    if self.keyVaultUri != nil {try container.encode(self.keyVaultUri, forKey: .keyVaultUri)}
    if self.keyVaultId != nil {try container.encode(self.keyVaultId, forKey: .keyVaultId)}
  }
}

extension DataFactory {
  public static func createUserSecretStoreFragmentProtocol() -> UserSecretStoreFragmentProtocol {
    return UserSecretStoreFragmentData()
  }
}
