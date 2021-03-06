// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ApplicationGatewayFirewallRuleSetPropertiesFormatData : ApplicationGatewayFirewallRuleSetPropertiesFormatProtocol {
    public var provisioningState: String?
    public var ruleSetType: String
    public var ruleSetVersion: String
    public var ruleGroups: [ApplicationGatewayFirewallRuleGroupProtocol]

        enum CodingKeys: String, CodingKey {case provisioningState = "provisioningState"
        case ruleSetType = "ruleSetType"
        case ruleSetVersion = "ruleSetVersion"
        case ruleGroups = "ruleGroups"
        }

  public init(ruleSetType: String, ruleSetVersion: String, ruleGroups: [ApplicationGatewayFirewallRuleGroupProtocol])  {
    self.ruleSetType = ruleSetType
    self.ruleSetVersion = ruleSetVersion
    self.ruleGroups = ruleGroups
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.provisioningState) {
        self.provisioningState = try container.decode(String?.self, forKey: .provisioningState)
    }
    self.ruleSetType = try container.decode(String.self, forKey: .ruleSetType)
    self.ruleSetVersion = try container.decode(String.self, forKey: .ruleSetVersion)
    self.ruleGroups = try container.decode([ApplicationGatewayFirewallRuleGroupData].self, forKey: .ruleGroups)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if self.provisioningState != nil {try container.encode(self.provisioningState, forKey: .provisioningState)}
    try container.encode(self.ruleSetType, forKey: .ruleSetType)
    try container.encode(self.ruleSetVersion, forKey: .ruleSetVersion)
    try container.encode(self.ruleGroups as! [ApplicationGatewayFirewallRuleGroupData], forKey: .ruleGroups)
  }
}

extension DataFactory {
  public static func createApplicationGatewayFirewallRuleSetPropertiesFormatProtocol(ruleSetType: String, ruleSetVersion: String, ruleGroups: [ApplicationGatewayFirewallRuleGroupProtocol]) -> ApplicationGatewayFirewallRuleSetPropertiesFormatProtocol {
    return ApplicationGatewayFirewallRuleSetPropertiesFormatData(ruleSetType: ruleSetType, ruleSetVersion: ruleSetVersion, ruleGroups: ruleGroups)
  }
}
