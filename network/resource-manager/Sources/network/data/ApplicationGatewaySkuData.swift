// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ApplicationGatewaySkuData : ApplicationGatewaySkuProtocol {
    public var name: ApplicationGatewaySkuNameEnum?
    public var tier: ApplicationGatewayTierEnum?
    public var capacity: Int32?

        enum CodingKeys: String, CodingKey {case name = "name"
        case tier = "tier"
        case capacity = "capacity"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.name) {
        self.name = try container.decode(ApplicationGatewaySkuNameEnum?.self, forKey: .name)
    }
    if container.contains(.tier) {
        self.tier = try container.decode(ApplicationGatewayTierEnum?.self, forKey: .tier)
    }
    if container.contains(.capacity) {
        self.capacity = try container.decode(Int32?.self, forKey: .capacity)
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
    if self.capacity != nil {try container.encode(self.capacity, forKey: .capacity)}
  }
}

extension DataFactory {
  public static func createApplicationGatewaySkuProtocol() -> ApplicationGatewaySkuProtocol {
    return ApplicationGatewaySkuData()
  }
}
