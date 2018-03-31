// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// OutboundNatRulePropertiesFormatProtocol is outbound NAT pool of the load balancer.
public protocol OutboundNatRulePropertiesFormatProtocol : Codable {
     var allocatedOutboundPorts: Int32? { get set }
     var frontendIPConfigurations: [SubResourceProtocol?]? { get set }
     var backendAddressPool: SubResourceProtocol { get set }
     var provisioningState: String? { get set }
}
