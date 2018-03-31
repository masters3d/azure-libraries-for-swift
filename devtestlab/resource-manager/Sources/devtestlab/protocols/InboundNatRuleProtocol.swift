// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// InboundNatRuleProtocol is a rule for NAT - exposing a VM's port (backendPort) on the public IP address using a load
// balancer.
public protocol InboundNatRuleProtocol : Codable {
     var transportProtocol: TransportProtocolEnum? { get set }
     var frontendPort: Int32? { get set }
     var backendPort: Int32? { get set }
}
