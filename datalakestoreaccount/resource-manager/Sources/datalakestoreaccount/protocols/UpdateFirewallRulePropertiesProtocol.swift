// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// UpdateFirewallRulePropertiesProtocol is the firewall rule properties to use when updating a firewall rule.
public protocol UpdateFirewallRulePropertiesProtocol : Codable {
     var startIpAddress: String? { get set }
     var endIpAddress: String? { get set }
}
