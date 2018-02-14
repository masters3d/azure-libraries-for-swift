// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct VaultSecretGroupData : VaultSecretGroupProtocol {
    public var sourceVault: SubResourceProtocol?
    public var vaultCertificates: [VaultCertificateProtocol?]?

        enum CodingKeys: String, CodingKey {case sourceVault = "sourceVault"
        case vaultCertificates = "vaultCertificates"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.sourceVault) {
        self.sourceVault = try container.decode(SubResourceData?.self, forKey: .sourceVault)
    }
    if container.contains(.vaultCertificates) {
        self.vaultCertificates = try container.decode([VaultCertificateData?]?.self, forKey: .vaultCertificates)
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
    if self.sourceVault != nil {try container.encode(self.sourceVault as! SubResourceData?, forKey: .sourceVault)}
    if self.vaultCertificates != nil {try container.encode(self.vaultCertificates as! [VaultCertificateData?]?, forKey: .vaultCertificates)}
  }
}

extension DataFactory {
  public static func createVaultSecretGroupProtocol() -> VaultSecretGroupProtocol {
    return VaultSecretGroupData()
  }
}