// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct UpdateFirewallRulePropertiesData : UpdateFirewallRulePropertiesProtocol {
    public var startIpAddress: String?
    public var endIpAddress: String?

        enum CodingKeys: String, CodingKey {case startIpAddress = "startIpAddress"
        case endIpAddress = "endIpAddress"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.startIpAddress) {
        self.startIpAddress = try container.decode(String?.self, forKey: .startIpAddress)
    }
    if container.contains(.endIpAddress) {
        self.endIpAddress = try container.decode(String?.self, forKey: .endIpAddress)
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
    if self.startIpAddress != nil {try container.encode(self.startIpAddress, forKey: .startIpAddress)}
    if self.endIpAddress != nil {try container.encode(self.endIpAddress, forKey: .endIpAddress)}
  }
}

extension DataFactory {
  public static func createUpdateFirewallRulePropertiesProtocol() -> UpdateFirewallRulePropertiesProtocol {
    return UpdateFirewallRulePropertiesData()
  }
}
