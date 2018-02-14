// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct GlobalCsmSkuDescriptionData : GlobalCsmSkuDescriptionProtocol {
    public var name: String?
    public var tier: String?
    public var size: String?
    public var family: String?
    public var capacity: SkuCapacityProtocol?
    public var locations: [String]?
    public var capabilities: [CapabilityProtocol?]?

        enum CodingKeys: String, CodingKey {case name = "name"
        case tier = "tier"
        case size = "size"
        case family = "family"
        case capacity = "capacity"
        case locations = "locations"
        case capabilities = "capabilities"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.name) {
        self.name = try container.decode(String?.self, forKey: .name)
    }
    if container.contains(.tier) {
        self.tier = try container.decode(String?.self, forKey: .tier)
    }
    if container.contains(.size) {
        self.size = try container.decode(String?.self, forKey: .size)
    }
    if container.contains(.family) {
        self.family = try container.decode(String?.self, forKey: .family)
    }
    if container.contains(.capacity) {
        self.capacity = try container.decode(SkuCapacityData?.self, forKey: .capacity)
    }
    if container.contains(.locations) {
        self.locations = try container.decode([String]?.self, forKey: .locations)
    }
    if container.contains(.capabilities) {
        self.capabilities = try container.decode([CapabilityData?]?.self, forKey: .capabilities)
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
    if self.name != nil {try container.encode(self.name, forKey: .name)}
    if self.tier != nil {try container.encode(self.tier, forKey: .tier)}
    if self.size != nil {try container.encode(self.size, forKey: .size)}
    if self.family != nil {try container.encode(self.family, forKey: .family)}
    if self.capacity != nil {try container.encode(self.capacity as! SkuCapacityData?, forKey: .capacity)}
    if self.locations != nil {try container.encode(self.locations as! [String]?, forKey: .locations)}
    if self.capabilities != nil {try container.encode(self.capabilities as! [CapabilityData?]?, forKey: .capabilities)}
  }
}

extension DataFactory {
  public static func createGlobalCsmSkuDescriptionProtocol() -> GlobalCsmSkuDescriptionProtocol {
    return GlobalCsmSkuDescriptionData()
  }
}
