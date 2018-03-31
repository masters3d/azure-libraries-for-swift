// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct RouteFilterPropertiesFormatData : RouteFilterPropertiesFormatProtocol {
    public var rules: [RouteFilterRuleProtocol?]?
    public var peerings: [ExpressRouteCircuitPeeringProtocol?]?
    public var provisioningState: String?

        enum CodingKeys: String, CodingKey {case rules = "rules"
        case peerings = "peerings"
        case provisioningState = "provisioningState"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.rules) {
        self.rules = try container.decode([RouteFilterRuleData?]?.self, forKey: .rules)
    }
    if container.contains(.peerings) {
        self.peerings = try container.decode([ExpressRouteCircuitPeeringData?]?.self, forKey: .peerings)
    }
    if container.contains(.provisioningState) {
        self.provisioningState = try container.decode(String?.self, forKey: .provisioningState)
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
    if self.rules != nil { try container.encode(self.rules as! [RouteFilterRuleData?]?, forKey: .rules) }
    if self.peerings != nil { try container.encode(self.peerings as! [ExpressRouteCircuitPeeringData?]?, forKey: .peerings) }
    if self.provisioningState != nil { try container.encode(self.provisioningState, forKey: .provisioningState) }
  }
}

extension DataFactory {
  public static func createRouteFilterPropertiesFormatProtocol() -> RouteFilterPropertiesFormatProtocol {
    return RouteFilterPropertiesFormatData()
  }
}
