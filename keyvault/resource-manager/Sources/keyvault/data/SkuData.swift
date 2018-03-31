// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct SkuData : SkuProtocol {
    public var family: String
    public var name: SkuNameEnum

        enum CodingKeys: String, CodingKey {case family = "family"
        case name = "name"
        }

  public init(family: String, name: SkuNameEnum) {
    self.family = family
    self.name = name
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.family = try container.decode(String.self, forKey: .family)
    self.name = try container.decode(SkuNameEnum.self, forKey: .name)
    if var pageDecoder = decoder as? PageDecoder {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.family, forKey: .family)
    try container.encode(self.name, forKey: .name)
  }
}

extension DataFactory {
  public static func createSkuProtocol(family: String, name: SkuNameEnum) -> SkuProtocol {
    return SkuData(family: family, name: name)
  }
}
