// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// IPv4FirewallRuleProtocol is the detail of firewall rule.
public protocol IPv4FirewallRuleProtocol : Codable {
     var firewallRuleName: String? { get set }
     var rangeStart: String? { get set }
     var rangeEnd: String? { get set }
}
