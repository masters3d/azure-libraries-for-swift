// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// IPv4FirewallSettingsProtocol is an array of firewall rules.
public protocol IPv4FirewallSettingsProtocol : Codable {
     var firewallRules: [IPv4FirewallRuleProtocol?]? { get set }
     var enablePowerBIService: String? { get set }
}
