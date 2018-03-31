// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// VirtualNetworkGateways is the network Client
import Foundation
import azureSwiftRuntime
extension Commands {
public struct VirtualNetworkGateways {
    public static func CreateOrUpdate(resourceGroupName: String, virtualNetworkGatewayName: String, subscriptionId: String, parameters: VirtualNetworkGatewayProtocol) -> VirtualNetworkGatewaysCreateOrUpdate {
        return CreateOrUpdateCommand(resourceGroupName: resourceGroupName, virtualNetworkGatewayName: virtualNetworkGatewayName, subscriptionId: subscriptionId, parameters: parameters)
    }
    public static func Delete(resourceGroupName: String, virtualNetworkGatewayName: String, subscriptionId: String) -> VirtualNetworkGatewaysDelete {
        return DeleteCommand(resourceGroupName: resourceGroupName, virtualNetworkGatewayName: virtualNetworkGatewayName, subscriptionId: subscriptionId)
    }
    public static func Generatevpnclientpackage(resourceGroupName: String, virtualNetworkGatewayName: String, subscriptionId: String, parameters: VpnClientParametersProtocol) -> VirtualNetworkGatewaysGeneratevpnclientpackage {
        return GeneratevpnclientpackageCommand(resourceGroupName: resourceGroupName, virtualNetworkGatewayName: virtualNetworkGatewayName, subscriptionId: subscriptionId, parameters: parameters)
    }
    public static func GenerateVpnProfile(resourceGroupName: String, virtualNetworkGatewayName: String, subscriptionId: String, parameters: VpnClientParametersProtocol) -> VirtualNetworkGatewaysGenerateVpnProfile {
        return GenerateVpnProfileCommand(resourceGroupName: resourceGroupName, virtualNetworkGatewayName: virtualNetworkGatewayName, subscriptionId: subscriptionId, parameters: parameters)
    }
    public static func Get(resourceGroupName: String, virtualNetworkGatewayName: String, subscriptionId: String) -> VirtualNetworkGatewaysGet {
        return GetCommand(resourceGroupName: resourceGroupName, virtualNetworkGatewayName: virtualNetworkGatewayName, subscriptionId: subscriptionId)
    }
    public static func GetAdvertisedRoutes(resourceGroupName: String, virtualNetworkGatewayName: String, subscriptionId: String, peer: String) -> VirtualNetworkGatewaysGetAdvertisedRoutes {
        return GetAdvertisedRoutesCommand(resourceGroupName: resourceGroupName, virtualNetworkGatewayName: virtualNetworkGatewayName, subscriptionId: subscriptionId, peer: peer)
    }
    public static func GetBgpPeerStatus(resourceGroupName: String, virtualNetworkGatewayName: String, subscriptionId: String) -> VirtualNetworkGatewaysGetBgpPeerStatus {
        return GetBgpPeerStatusCommand(resourceGroupName: resourceGroupName, virtualNetworkGatewayName: virtualNetworkGatewayName, subscriptionId: subscriptionId)
    }
    public static func GetLearnedRoutes(resourceGroupName: String, virtualNetworkGatewayName: String, subscriptionId: String) -> VirtualNetworkGatewaysGetLearnedRoutes {
        return GetLearnedRoutesCommand(resourceGroupName: resourceGroupName, virtualNetworkGatewayName: virtualNetworkGatewayName, subscriptionId: subscriptionId)
    }
    public static func GetVpnProfilePackageUrl(resourceGroupName: String, virtualNetworkGatewayName: String, subscriptionId: String) -> VirtualNetworkGatewaysGetVpnProfilePackageUrl {
        return GetVpnProfilePackageUrlCommand(resourceGroupName: resourceGroupName, virtualNetworkGatewayName: virtualNetworkGatewayName, subscriptionId: subscriptionId)
    }
    public static func List(resourceGroupName: String, subscriptionId: String) -> VirtualNetworkGatewaysList {
        return ListCommand(resourceGroupName: resourceGroupName, subscriptionId: subscriptionId)
    }
    public static func ListConnections(resourceGroupName: String, virtualNetworkGatewayName: String, subscriptionId: String) -> VirtualNetworkGatewaysListConnections {
        return ListConnectionsCommand(resourceGroupName: resourceGroupName, virtualNetworkGatewayName: virtualNetworkGatewayName, subscriptionId: subscriptionId)
    }
    public static func Reset(resourceGroupName: String, virtualNetworkGatewayName: String, subscriptionId: String) -> VirtualNetworkGatewaysReset {
        return ResetCommand(resourceGroupName: resourceGroupName, virtualNetworkGatewayName: virtualNetworkGatewayName, subscriptionId: subscriptionId)
    }
    public static func SupportedVpnDevices(resourceGroupName: String, virtualNetworkGatewayName: String, subscriptionId: String) -> VirtualNetworkGatewaysSupportedVpnDevices {
        return SupportedVpnDevicesCommand(resourceGroupName: resourceGroupName, virtualNetworkGatewayName: virtualNetworkGatewayName, subscriptionId: subscriptionId)
    }
    public static func UpdateTags(resourceGroupName: String, virtualNetworkGatewayName: String, subscriptionId: String, parameters: TagsObjectProtocol) -> VirtualNetworkGatewaysUpdateTags {
        return UpdateTagsCommand(resourceGroupName: resourceGroupName, virtualNetworkGatewayName: virtualNetworkGatewayName, subscriptionId: subscriptionId, parameters: parameters)
    }
    public static func VpnDeviceConfigurationScript(resourceGroupName: String, virtualNetworkGatewayConnectionName: String, subscriptionId: String, parameters: VpnDeviceScriptParametersProtocol) -> VirtualNetworkGatewaysVpnDeviceConfigurationScript {
        return VpnDeviceConfigurationScriptCommand(resourceGroupName: resourceGroupName, virtualNetworkGatewayConnectionName: virtualNetworkGatewayConnectionName, subscriptionId: subscriptionId, parameters: parameters)
    }
}
}
