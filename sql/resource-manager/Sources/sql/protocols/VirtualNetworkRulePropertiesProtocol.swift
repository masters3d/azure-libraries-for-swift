// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// VirtualNetworkRulePropertiesProtocol is properties of a virtual network rule.
public protocol VirtualNetworkRulePropertiesProtocol : Codable {
     var virtualNetworkSubnetId: String { get set }
     var ignoreMissingVnetServiceEndpoint: Bool? { get set }
     var state: VirtualNetworkRuleStateEnum? { get set }
}
