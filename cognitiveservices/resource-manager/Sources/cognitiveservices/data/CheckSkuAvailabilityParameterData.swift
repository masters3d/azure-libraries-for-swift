// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct CheckSkuAvailabilityParameterData : CheckSkuAvailabilityParameterProtocol {
    public var skus: [SkuNameEnum]
    public var kind: KindEnum
    public var type: String

        enum CodingKeys: String, CodingKey {case skus = "skus"
        case kind = "kind"
        case type = "type"
        }

  public init(skus: [SkuNameEnum], kind: KindEnum, type: String)  {
    self.skus = skus
    self.kind = kind
    self.type = type
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.skus = try container.decode([SkuNameEnum].self, forKey: .skus)
    self.kind = try container.decode(KindEnum.self, forKey: .kind)
    self.type = try container.decode(String.self, forKey: .type)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.skus as! [SkuNameEnum], forKey: .skus)
    try container.encode(self.kind, forKey: .kind)
    try container.encode(self.type, forKey: .type)
  }
}

extension DataFactory {
  public static func createCheckSkuAvailabilityParameterProtocol(skus: [SkuNameEnum], kind: KindEnum, type: String) -> CheckSkuAvailabilityParameterProtocol {
    return CheckSkuAvailabilityParameterData(skus: skus, kind: kind, type: type)
  }
}