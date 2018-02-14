// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// RedisFirewallRuleListResultProtocol is the response of list firewall rules Redis operation.
public protocol RedisFirewallRuleListResultProtocol : Codable {
     var value: [RedisFirewallRuleProtocol?]? { get set }
     var _nextLink: String? { get set }
}