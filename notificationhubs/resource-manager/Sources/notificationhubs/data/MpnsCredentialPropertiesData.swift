// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct MpnsCredentialPropertiesData : MpnsCredentialPropertiesProtocol {
    public var mpnsCertificate: String?
    public var certificateKey: String?
    public var thumbprint: String?

        enum CodingKeys: String, CodingKey {case mpnsCertificate = "mpnsCertificate"
        case certificateKey = "certificateKey"
        case thumbprint = "thumbprint"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.mpnsCertificate) {
        self.mpnsCertificate = try container.decode(String?.self, forKey: .mpnsCertificate)
    }
    if container.contains(.certificateKey) {
        self.certificateKey = try container.decode(String?.self, forKey: .certificateKey)
    }
    if container.contains(.thumbprint) {
        self.thumbprint = try container.decode(String?.self, forKey: .thumbprint)
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
    if self.mpnsCertificate != nil {try container.encode(self.mpnsCertificate, forKey: .mpnsCertificate)}
    if self.certificateKey != nil {try container.encode(self.certificateKey, forKey: .certificateKey)}
    if self.thumbprint != nil {try container.encode(self.thumbprint, forKey: .thumbprint)}
  }
}

extension DataFactory {
  public static func createMpnsCredentialPropertiesProtocol() -> MpnsCredentialPropertiesProtocol {
    return MpnsCredentialPropertiesData()
  }
}
