// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// FirewallRuleListResultProtocol is data Lake Analytics firewall rule list information.
public protocol FirewallRuleListResultProtocol : Codable {
     var value: [FirewallRuleProtocol?]? { get set }
     var _nextLink: String? { get set }
}
