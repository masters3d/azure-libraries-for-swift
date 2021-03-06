// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ApplicationGatewayFirewallRuleGroupData : ApplicationGatewayFirewallRuleGroupProtocol {
    public var ruleGroupName: String
    public var description: String?
    public var rules: [ApplicationGatewayFirewallRuleProtocol]

        enum CodingKeys: String, CodingKey {case ruleGroupName = "ruleGroupName"
        case description = "description"
        case rules = "rules"
        }

  public init(ruleGroupName: String, rules: [ApplicationGatewayFirewallRuleProtocol])  {
    self.ruleGroupName = ruleGroupName
    self.rules = rules
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.ruleGroupName = try container.decode(String.self, forKey: .ruleGroupName)
    if container.contains(.description) {
        self.description = try container.decode(String?.self, forKey: .description)
    }
    self.rules = try container.decode([ApplicationGatewayFirewallRuleData].self, forKey: .rules)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.ruleGroupName, forKey: .ruleGroupName)
    if self.description != nil {try container.encode(self.description, forKey: .description)}
    try container.encode(self.rules as! [ApplicationGatewayFirewallRuleData], forKey: .rules)
  }
}

extension DataFactory {
  public static func createApplicationGatewayFirewallRuleGroupProtocol(ruleGroupName: String, rules: [ApplicationGatewayFirewallRuleProtocol]) -> ApplicationGatewayFirewallRuleGroupProtocol {
    return ApplicationGatewayFirewallRuleGroupData(ruleGroupName: ruleGroupName, rules: rules)
  }
}
