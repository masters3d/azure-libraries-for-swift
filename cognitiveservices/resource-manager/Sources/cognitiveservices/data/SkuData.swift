// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct SkuData : SkuProtocol {
    public var name: SkuNameEnum
    public var tier: SkuTierEnum?

        enum CodingKeys: String, CodingKey {case name = "name"
        case tier = "tier"
        }

  public init(name: SkuNameEnum) {
    self.name = name
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.name = try container.decode(SkuNameEnum.self, forKey: .name)
    if container.contains(.tier) {
        self.tier = try container.decode(SkuTierEnum?.self, forKey: .tier)
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
    try container.encode(self.name, forKey: .name)
    if self.tier != nil { try container.encode(self.tier, forKey: .tier) }
  }
}

extension DataFactory {
  public static func createSkuProtocol(name: SkuNameEnum) -> SkuProtocol {
    return SkuData(name: name)
  }
}
