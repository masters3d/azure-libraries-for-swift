// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// VirtualNetworkGatewayConnectionPropertiesFormatProtocol is virtualNetworkGatewayConnection properties
public protocol VirtualNetworkGatewayConnectionPropertiesFormatProtocol : Codable {
     var authorizationKey: String? { get set }
     var virtualNetworkGateway1: VirtualNetworkGatewayProtocol { get set }
     var virtualNetworkGateway2: VirtualNetworkGatewayProtocol? { get set }
     var localNetworkGateway2: LocalNetworkGatewayProtocol? { get set }
     var connectionType: VirtualNetworkGatewayConnectionTypeEnum { get set }
     var routingWeight: Int32? { get set }
     var sharedKey: String? { get set }
     var connectionStatus: VirtualNetworkGatewayConnectionStatusEnum? { get set }
     var tunnelConnectionStatus: [TunnelConnectionHealthProtocol?]? { get set }
     var egressBytesTransferred: Int64? { get set }
     var ingressBytesTransferred: Int64? { get set }
     var peer: SubResourceProtocol? { get set }
     var enableBgp: Bool? { get set }
     var usePolicyBasedTrafficSelectors: Bool? { get set }
     var ipsecPolicies: [IpsecPolicyProtocol?]? { get set }
     var resourceGuid: String? { get set }
     var provisioningState: String? { get set }
}
