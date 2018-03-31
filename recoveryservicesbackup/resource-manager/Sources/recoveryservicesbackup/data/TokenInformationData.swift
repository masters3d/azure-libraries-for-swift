// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct TokenInformationData : TokenInformationProtocol {
    public var token: String?
    public var expiryTimeInUtcTicks: Int64?
    public var securityPIN: String?

        enum CodingKeys: String, CodingKey {case token = "token"
        case expiryTimeInUtcTicks = "expiryTimeInUtcTicks"
        case securityPIN = "securityPIN"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.token) {
        self.token = try container.decode(String?.self, forKey: .token)
    }
    if container.contains(.expiryTimeInUtcTicks) {
        self.expiryTimeInUtcTicks = try container.decode(Int64?.self, forKey: .expiryTimeInUtcTicks)
    }
    if container.contains(.securityPIN) {
        self.securityPIN = try container.decode(String?.self, forKey: .securityPIN)
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
    if self.token != nil {try container.encode(self.token, forKey: .token)}
    if self.expiryTimeInUtcTicks != nil {try container.encode(self.expiryTimeInUtcTicks, forKey: .expiryTimeInUtcTicks)}
    if self.securityPIN != nil {try container.encode(self.securityPIN, forKey: .securityPIN)}
  }
}

extension DataFactory {
  public static func createTokenInformationProtocol() -> TokenInformationProtocol {
    return TokenInformationData()
  }
}
