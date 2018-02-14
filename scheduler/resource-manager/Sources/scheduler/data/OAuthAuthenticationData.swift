// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct OAuthAuthenticationData : OAuthAuthenticationProtocol, HttpAuthenticationProtocol {
    public var secret: String?
    public var tenant: String?
    public var audience: String?
    public var clientId: String?

        enum CodingKeys: String, CodingKey {case secret = "secret"
        case tenant = "tenant"
        case audience = "audience"
        case clientId = "clientId"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.secret) {
        self.secret = try container.decode(String?.self, forKey: .secret)
    }
    if container.contains(.tenant) {
        self.tenant = try container.decode(String?.self, forKey: .tenant)
    }
    if container.contains(.audience) {
        self.audience = try container.decode(String?.self, forKey: .audience)
    }
    if container.contains(.clientId) {
        self.clientId = try container.decode(String?.self, forKey: .clientId)
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
    if self.secret != nil {try container.encode(self.secret, forKey: .secret)}
    if self.tenant != nil {try container.encode(self.tenant, forKey: .tenant)}
    if self.audience != nil {try container.encode(self.audience, forKey: .audience)}
    if self.clientId != nil {try container.encode(self.clientId, forKey: .clientId)}
  }
}

extension DataFactory {
  public static func createOAuthAuthenticationProtocol() -> OAuthAuthenticationProtocol {
    return OAuthAuthenticationData()
  }
}
