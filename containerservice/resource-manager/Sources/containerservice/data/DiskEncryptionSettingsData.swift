// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct DiskEncryptionSettingsData : DiskEncryptionSettingsProtocol {
    public var diskEncryptionKey: KeyVaultSecretReferenceProtocol?
    public var keyEncryptionKey: KeyVaultKeyReferenceProtocol?
    public var enabled: Bool?

        enum CodingKeys: String, CodingKey {case diskEncryptionKey = "diskEncryptionKey"
        case keyEncryptionKey = "keyEncryptionKey"
        case enabled = "enabled"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.diskEncryptionKey) {
        self.diskEncryptionKey = try container.decode(KeyVaultSecretReferenceData?.self, forKey: .diskEncryptionKey)
    }
    if container.contains(.keyEncryptionKey) {
        self.keyEncryptionKey = try container.decode(KeyVaultKeyReferenceData?.self, forKey: .keyEncryptionKey)
    }
    if container.contains(.enabled) {
        self.enabled = try container.decode(Bool?.self, forKey: .enabled)
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
    if self.diskEncryptionKey != nil { try container.encode(self.diskEncryptionKey as! KeyVaultSecretReferenceData?, forKey: .diskEncryptionKey) }
    if self.keyEncryptionKey != nil { try container.encode(self.keyEncryptionKey as! KeyVaultKeyReferenceData?, forKey: .keyEncryptionKey) }
    if self.enabled != nil { try container.encode(self.enabled, forKey: .enabled) }
  }
}

extension DataFactory {
  public static func createDiskEncryptionSettingsProtocol() -> DiskEncryptionSettingsProtocol {
    return DiskEncryptionSettingsData()
  }
}
