// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct SkuData : SkuProtocol {
    public var name: SkuNameEnum
    public var tier: SkuTierEnum?
    public var resourceType: String?
    public var kind: KindEnum?
    public var locations: [String]?
    public var capabilities: [SKUCapabilityProtocol?]?
    public var restrictions: [RestrictionProtocol?]?

        enum CodingKeys: String, CodingKey {case name = "name"
        case tier = "tier"
        case resourceType = "resourceType"
        case kind = "kind"
        case locations = "locations"
        case capabilities = "capabilities"
        case restrictions = "restrictions"
        }

  public init(name: SkuNameEnum)  {
    self.name = name
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.name = try container.decode(SkuNameEnum.self, forKey: .name)
    if container.contains(.tier) {
        self.tier = try container.decode(SkuTierEnum?.self, forKey: .tier)
    }
    if container.contains(.resourceType) {
        self.resourceType = try container.decode(String?.self, forKey: .resourceType)
    }
    if container.contains(.kind) {
        self.kind = try container.decode(KindEnum?.self, forKey: .kind)
    }
    if container.contains(.locations) {
        self.locations = try container.decode([String]?.self, forKey: .locations)
    }
    if container.contains(.capabilities) {
        self.capabilities = try container.decode([SKUCapabilityData?]?.self, forKey: .capabilities)
    }
    if container.contains(.restrictions) {
        self.restrictions = try container.decode([RestrictionData?]?.self, forKey: .restrictions)
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
    try container.encode(self.name, forKey: .name)
    if self.tier != nil {try container.encode(self.tier, forKey: .tier)}
    if self.resourceType != nil {try container.encode(self.resourceType, forKey: .resourceType)}
    if self.kind != nil {try container.encode(self.kind, forKey: .kind)}
    if self.locations != nil {try container.encode(self.locations as! [String]?, forKey: .locations)}
    if self.capabilities != nil {try container.encode(self.capabilities as! [SKUCapabilityData?]?, forKey: .capabilities)}
    if self.restrictions != nil {try container.encode(self.restrictions as! [RestrictionData?]?, forKey: .restrictions)}
  }
}

extension DataFactory {
  public static func createSkuProtocol(name: SkuNameEnum) -> SkuProtocol {
    return SkuData(name: name)
  }
}
