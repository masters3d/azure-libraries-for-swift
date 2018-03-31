// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ApplicationGatewayFirewallRuleGroupProtocol is a web application firewall rule group.
public protocol ApplicationGatewayFirewallRuleGroupProtocol : Codable {
     var ruleGroupName: String { get set }
     var description: String? { get set }
     var rules: [ApplicationGatewayFirewallRuleProtocol] { get set }
}
