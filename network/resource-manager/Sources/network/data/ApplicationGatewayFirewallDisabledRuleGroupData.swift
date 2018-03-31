// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ApplicationGatewayFirewallDisabledRuleGroupData : ApplicationGatewayFirewallDisabledRuleGroupProtocol {
    public var ruleGroupName: String
    public var rules: [Int32]?

        enum CodingKeys: String, CodingKey {case ruleGroupName = "ruleGroupName"
        case rules = "rules"
        }

  public init(ruleGroupName: String)  {
    self.ruleGroupName = ruleGroupName
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.ruleGroupName = try container.decode(String.self, forKey: .ruleGroupName)
    if container.contains(.rules) {
        self.rules = try container.decode([Int32]?.self, forKey: .rules)
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
    try container.encode(self.ruleGroupName, forKey: .ruleGroupName)
    if self.rules != nil {try container.encode(self.rules as! [Int32]?, forKey: .rules)}
  }
}

extension DataFactory {
  public static func createApplicationGatewayFirewallDisabledRuleGroupProtocol(ruleGroupName: String) -> ApplicationGatewayFirewallDisabledRuleGroupProtocol {
    return ApplicationGatewayFirewallDisabledRuleGroupData(ruleGroupName: ruleGroupName)
  }
}
