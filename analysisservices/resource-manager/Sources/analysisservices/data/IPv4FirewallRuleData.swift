// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct IPv4FirewallRuleData : IPv4FirewallRuleProtocol {
    public var firewallRuleName: String?
    public var rangeStart: String?
    public var rangeEnd: String?

        enum CodingKeys: String, CodingKey {case firewallRuleName = "firewallRuleName"
        case rangeStart = "rangeStart"
        case rangeEnd = "rangeEnd"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.firewallRuleName) {
        self.firewallRuleName = try container.decode(String?.self, forKey: .firewallRuleName)
    }
    if container.contains(.rangeStart) {
        self.rangeStart = try container.decode(String?.self, forKey: .rangeStart)
    }
    if container.contains(.rangeEnd) {
        self.rangeEnd = try container.decode(String?.self, forKey: .rangeEnd)
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
    if self.firewallRuleName != nil {try container.encode(self.firewallRuleName, forKey: .firewallRuleName)}
    if self.rangeStart != nil {try container.encode(self.rangeStart, forKey: .rangeStart)}
    if self.rangeEnd != nil {try container.encode(self.rangeEnd, forKey: .rangeEnd)}
  }
}

extension DataFactory {
  public static func createIPv4FirewallRuleProtocol() -> IPv4FirewallRuleProtocol {
    return IPv4FirewallRuleData()
  }
}
