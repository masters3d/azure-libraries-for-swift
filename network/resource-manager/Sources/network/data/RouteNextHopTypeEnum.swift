// RouteNextHopType enumerates the values for route next hop type.

// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
public enum RouteNextHopTypeEnum: String, Codable
{
// RouteNextHopTypeInternet specifies the route next hop type internet state for route next hop type.
    case RouteNextHopTypeInternet = "Internet"
// RouteNextHopTypeNone specifies the route next hop type none state for route next hop type.
    case RouteNextHopTypeNone = "None"
// RouteNextHopTypeVirtualAppliance specifies the route next hop type virtual appliance state for route next hop type.
    case RouteNextHopTypeVirtualAppliance = "VirtualAppliance"
// RouteNextHopTypeVirtualNetworkGateway specifies the route next hop type virtual network gateway state for route next
// hop type.
    case RouteNextHopTypeVirtualNetworkGateway = "VirtualNetworkGateway"
// RouteNextHopTypeVnetLocal specifies the route next hop type vnet local state for route next hop type.
    case RouteNextHopTypeVnetLocal = "VnetLocal"
}
