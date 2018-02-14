// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct AdmCredentialPropertiesData : AdmCredentialPropertiesProtocol {
    public var clientId: String?
    public var clientSecret: String?
    public var authTokenUrl: String?

        enum CodingKeys: String, CodingKey {case clientId = "clientId"
        case clientSecret = "clientSecret"
        case authTokenUrl = "authTokenUrl"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.clientId) {
        self.clientId = try container.decode(String?.self, forKey: .clientId)
    }
    if container.contains(.clientSecret) {
        self.clientSecret = try container.decode(String?.self, forKey: .clientSecret)
    }
    if container.contains(.authTokenUrl) {
        self.authTokenUrl = try container.decode(String?.self, forKey: .authTokenUrl)
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
    if self.clientId != nil {try container.encode(self.clientId, forKey: .clientId)}
    if self.clientSecret != nil {try container.encode(self.clientSecret, forKey: .clientSecret)}
    if self.authTokenUrl != nil {try container.encode(self.authTokenUrl, forKey: .authTokenUrl)}
  }
}

extension DataFactory {
  public static func createAdmCredentialPropertiesProtocol() -> AdmCredentialPropertiesProtocol {
    return AdmCredentialPropertiesData()
  }
}