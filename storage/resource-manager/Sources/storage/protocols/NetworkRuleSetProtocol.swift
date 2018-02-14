// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// NetworkRuleSetProtocol is network rule set
public protocol NetworkRuleSetProtocol : Codable {
     var bypass: BypassEnum? { get set }
     var virtualNetworkRules: [VirtualNetworkRuleProtocol?]? { get set }
     var ipRules: [IPRuleProtocol?]? { get set }
     var defaultAction: DefaultActionEnum { get set }
}
