// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ExpressRouteCircuitStatsData : ExpressRouteCircuitStatsProtocol {
    public var primarybytesIn: Int64?
    public var primarybytesOut: Int64?
    public var secondarybytesIn: Int64?
    public var secondarybytesOut: Int64?

        enum CodingKeys: String, CodingKey {case primarybytesIn = "primarybytesIn"
        case primarybytesOut = "primarybytesOut"
        case secondarybytesIn = "secondarybytesIn"
        case secondarybytesOut = "secondarybytesOut"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.primarybytesIn) {
        self.primarybytesIn = try container.decode(Int64?.self, forKey: .primarybytesIn)
    }
    if container.contains(.primarybytesOut) {
        self.primarybytesOut = try container.decode(Int64?.self, forKey: .primarybytesOut)
    }
    if container.contains(.secondarybytesIn) {
        self.secondarybytesIn = try container.decode(Int64?.self, forKey: .secondarybytesIn)
    }
    if container.contains(.secondarybytesOut) {
        self.secondarybytesOut = try container.decode(Int64?.self, forKey: .secondarybytesOut)
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
    if self.primarybytesIn != nil {try container.encode(self.primarybytesIn, forKey: .primarybytesIn)}
    if self.primarybytesOut != nil {try container.encode(self.primarybytesOut, forKey: .primarybytesOut)}
    if self.secondarybytesIn != nil {try container.encode(self.secondarybytesIn, forKey: .secondarybytesIn)}
    if self.secondarybytesOut != nil {try container.encode(self.secondarybytesOut, forKey: .secondarybytesOut)}
  }
}

extension DataFactory {
  public static func createExpressRouteCircuitStatsProtocol() -> ExpressRouteCircuitStatsProtocol {
    return ExpressRouteCircuitStatsData()
  }
}
