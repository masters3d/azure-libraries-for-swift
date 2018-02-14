// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct EncryptionJwkResourceData : EncryptionJwkResourceProtocol {
    public var kty: String?
    public var alg: String?
    public var E: String?
    public var N: String?

        enum CodingKeys: String, CodingKey {case kty = "kty"
        case alg = "alg"
        case E = "e"
        case N = "n"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.kty) {
        self.kty = try container.decode(String?.self, forKey: .kty)
    }
    if container.contains(.alg) {
        self.alg = try container.decode(String?.self, forKey: .alg)
    }
    if container.contains(.E) {
        self.E = try container.decode(String?.self, forKey: .E)
    }
    if container.contains(.N) {
        self.N = try container.decode(String?.self, forKey: .N)
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
    if self.kty != nil {try container.encode(self.kty, forKey: .kty)}
    if self.alg != nil {try container.encode(self.alg, forKey: .alg)}
    if self.E != nil {try container.encode(self.E, forKey: .E)}
    if self.N != nil {try container.encode(self.N, forKey: .N)}
  }
}

extension DataFactory {
  public static func createEncryptionJwkResourceProtocol() -> EncryptionJwkResourceProtocol {
    return EncryptionJwkResourceData()
  }
}
