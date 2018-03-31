// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct QueryKeyData : QueryKeyProtocol {
    public var name: String?
    public var key: String?

        enum CodingKeys: String, CodingKey {case name = "name"
        case key = "key"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.name) {
        self.name = try container.decode(String?.self, forKey: .name)
    }
    if container.contains(.key) {
        self.key = try container.decode(String?.self, forKey: .key)
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
    if self.name != nil { try container.encode(self.name, forKey: .name) }
    if self.key != nil { try container.encode(self.key, forKey: .key) }
  }
}

extension DataFactory {
  public static func createQueryKeyProtocol() -> QueryKeyProtocol {
    return QueryKeyData()
  }
}
