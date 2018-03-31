// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// VirtualNetworkGatewayIPConfigurationPropertiesFormatProtocol is properties of VirtualNetworkGatewayIPConfiguration
public protocol VirtualNetworkGatewayIPConfigurationPropertiesFormatProtocol : Codable {
     var privateIPAllocationMethod: IPAllocationMethodEnum? { get set }
     var subnet: SubResourceProtocol? { get set }
     var publicIPAddress: SubResourceProtocol? { get set }
     var provisioningState: String? { get set }
}
