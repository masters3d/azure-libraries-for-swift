// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct EffectiveRouteData : EffectiveRouteProtocol {
    public var name: String?
    public var source: EffectiveRouteSourceEnum?
    public var state: EffectiveRouteStateEnum?
    public var addressPrefix: [String]?
    public var nextHopIpAddress: [String]?
    public var nextHopType: RouteNextHopTypeEnum?

        enum CodingKeys: String, CodingKey {case name = "name"
        case source = "source"
        case state = "state"
        case addressPrefix = "addressPrefix"
        case nextHopIpAddress = "nextHopIpAddress"
        case nextHopType = "nextHopType"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.name) {
        self.name = try container.decode(String?.self, forKey: .name)
    }
    if container.contains(.source) {
        self.source = try container.decode(EffectiveRouteSourceEnum?.self, forKey: .source)
    }
    if container.contains(.state) {
        self.state = try container.decode(EffectiveRouteStateEnum?.self, forKey: .state)
    }
    if container.contains(.addressPrefix) {
        self.addressPrefix = try container.decode([String]?.self, forKey: .addressPrefix)
    }
    if container.contains(.nextHopIpAddress) {
        self.nextHopIpAddress = try container.decode([String]?.self, forKey: .nextHopIpAddress)
    }
    if container.contains(.nextHopType) {
        self.nextHopType = try container.decode(RouteNextHopTypeEnum?.self, forKey: .nextHopType)
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
    if self.source != nil {try container.encode(self.source, forKey: .source)}
    if self.state != nil {try container.encode(self.state, forKey: .state)}
    if self.addressPrefix != nil {try container.encode(self.addressPrefix as! [String]?, forKey: .addressPrefix)}
    if self.nextHopIpAddress != nil {try container.encode(self.nextHopIpAddress as! [String]?, forKey: .nextHopIpAddress)}
    if self.nextHopType != nil {try container.encode(self.nextHopType, forKey: .nextHopType)}
  }
}

extension DataFactory {
  public static func createEffectiveRouteProtocol() -> EffectiveRouteProtocol {
    return EffectiveRouteData()
  }
}
