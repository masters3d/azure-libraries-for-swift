// VirtualNetworkGatewayConnectionType enumerates the values for virtual network gateway connection type.

// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
public enum VirtualNetworkGatewayConnectionTypeEnum: String, Codable
{
// ExpressRoute specifies the express route state for virtual network gateway connection type.
    case ExpressRoute = "ExpressRoute"
// IPsec specifies the i psec state for virtual network gateway connection type.
    case IPsec = "IPsec"
// Vnet2Vnet specifies the vnet 2 vnet state for virtual network gateway connection type.
    case Vnet2Vnet = "Vnet2Vnet"
// VPNClient specifies the vpn client state for virtual network gateway connection type.
    case VPNClient = "VPNClient"
}
