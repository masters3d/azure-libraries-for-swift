// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// Gateway is the REST API for Azure Server Management Service.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct Gateway {
    public static func Create(subscriptionId: String, resourceGroupName: String, gatewayName: String, gatewayParameters: GatewayParametersProtocol) -> GatewayCreate {
        return CreateCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, gatewayName: gatewayName, gatewayParameters: gatewayParameters)
    }
    public static func Delete(subscriptionId: String, resourceGroupName: String, gatewayName: String) -> GatewayDelete {
        return DeleteCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, gatewayName: gatewayName)
    }
    public static func Get(subscriptionId: String, resourceGroupName: String, gatewayName: String) -> GatewayGet {
        return GetCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, gatewayName: gatewayName)
    }
    public static func GetProfile(subscriptionId: String, resourceGroupName: String, gatewayName: String) -> GatewayGetProfile {
        return GetProfileCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, gatewayName: gatewayName)
    }
    public static func List(subscriptionId: String) -> GatewayList {
        return ListCommand(subscriptionId: subscriptionId)
    }
    public static func ListForResourceGroup(subscriptionId: String, resourceGroupName: String) -> GatewayListForResourceGroup {
        return ListForResourceGroupCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName)
    }
    public static func RegenerateProfile(subscriptionId: String, resourceGroupName: String, gatewayName: String) -> GatewayRegenerateProfile {
        return RegenerateProfileCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, gatewayName: gatewayName)
    }
    public static func Update(subscriptionId: String, resourceGroupName: String, gatewayName: String, gatewayParameters: GatewayParametersProtocol) -> GatewayUpdate {
        return UpdateCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, gatewayName: gatewayName, gatewayParameters: gatewayParameters)
    }
    public static func Upgrade(subscriptionId: String, resourceGroupName: String, gatewayName: String) -> GatewayUpgrade {
        return UpgradeCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, gatewayName: gatewayName)
    }
}
}
