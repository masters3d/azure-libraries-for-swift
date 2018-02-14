// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ApplicationGatewayFirewallDisabledRuleGroupProtocol is allows to disable rules within a rule group or an entire rule
// group.
public protocol ApplicationGatewayFirewallDisabledRuleGroupProtocol : Codable {
     var ruleGroupName: String { get set }
     var rules: [Int32]? { get set }
}
