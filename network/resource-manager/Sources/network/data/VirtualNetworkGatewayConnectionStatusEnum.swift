// VirtualNetworkGatewayConnectionStatus enumerates the values for virtual network gateway connection status.

// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
public enum VirtualNetworkGatewayConnectionStatusEnum: String, Codable
{
// VirtualNetworkGatewayConnectionStatusConnected specifies the virtual network gateway connection status connected
// state for virtual network gateway connection status.
    case VirtualNetworkGatewayConnectionStatusConnected = "Connected"
// VirtualNetworkGatewayConnectionStatusConnecting specifies the virtual network gateway connection status connecting
// state for virtual network gateway connection status.
    case VirtualNetworkGatewayConnectionStatusConnecting = "Connecting"
// VirtualNetworkGatewayConnectionStatusNotConnected specifies the virtual network gateway connection status not
// connected state for virtual network gateway connection status.
    case VirtualNetworkGatewayConnectionStatusNotConnected = "NotConnected"
// VirtualNetworkGatewayConnectionStatusUnknown specifies the virtual network gateway connection status unknown state
// for virtual network gateway connection status.
    case VirtualNetworkGatewayConnectionStatusUnknown = "Unknown"
}
