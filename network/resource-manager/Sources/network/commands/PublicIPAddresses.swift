// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// PublicIPAddresses is the network Client
import Foundation
import azureSwiftRuntime
extension Commands {
public struct PublicIPAddresses {
    public static func CreateOrUpdate(resourceGroupName: String, publicIpAddressName: String, subscriptionId: String, parameters: PublicIPAddressProtocol) -> PublicIPAddressesCreateOrUpdate {
        return CreateOrUpdateCommand(resourceGroupName: resourceGroupName, publicIpAddressName: publicIpAddressName, subscriptionId: subscriptionId, parameters: parameters)
    }
    public static func Delete(resourceGroupName: String, publicIpAddressName: String, subscriptionId: String) -> PublicIPAddressesDelete {
        return DeleteCommand(resourceGroupName: resourceGroupName, publicIpAddressName: publicIpAddressName, subscriptionId: subscriptionId)
    }
    public static func Get(resourceGroupName: String, publicIpAddressName: String, subscriptionId: String) -> PublicIPAddressesGet {
        return GetCommand(resourceGroupName: resourceGroupName, publicIpAddressName: publicIpAddressName, subscriptionId: subscriptionId)
    }
    public static func GetVirtualMachineScaleSetPublicIPAddress(resourceGroupName: String, virtualMachineScaleSetName: String, virtualmachineIndex: String, networkInterfaceName: String, ipConfigurationName: String, publicIpAddressName: String, subscriptionId: String) -> PublicIPAddressesGetVirtualMachineScaleSetPublicIPAddress {
        return GetVirtualMachineScaleSetPublicIPAddressCommand(resourceGroupName: resourceGroupName, virtualMachineScaleSetName: virtualMachineScaleSetName, virtualmachineIndex: virtualmachineIndex, networkInterfaceName: networkInterfaceName, ipConfigurationName: ipConfigurationName, publicIpAddressName: publicIpAddressName, subscriptionId: subscriptionId)
    }
    public static func List(resourceGroupName: String, subscriptionId: String) -> PublicIPAddressesList {
        return ListCommand(resourceGroupName: resourceGroupName, subscriptionId: subscriptionId)
    }
    public static func ListAll(subscriptionId: String) -> PublicIPAddressesListAll {
        return ListAllCommand(subscriptionId: subscriptionId)
    }
    public static func ListVirtualMachineScaleSetPublicIPAddresses(resourceGroupName: String, virtualMachineScaleSetName: String, subscriptionId: String) -> PublicIPAddressesListVirtualMachineScaleSetPublicIPAddresses {
        return ListVirtualMachineScaleSetPublicIPAddressesCommand(resourceGroupName: resourceGroupName, virtualMachineScaleSetName: virtualMachineScaleSetName, subscriptionId: subscriptionId)
    }
    public static func ListVirtualMachineScaleSetVMPublicIPAddresses(resourceGroupName: String, virtualMachineScaleSetName: String, virtualmachineIndex: String, networkInterfaceName: String, ipConfigurationName: String, subscriptionId: String) -> PublicIPAddressesListVirtualMachineScaleSetVMPublicIPAddresses {
        return ListVirtualMachineScaleSetVMPublicIPAddressesCommand(resourceGroupName: resourceGroupName, virtualMachineScaleSetName: virtualMachineScaleSetName, virtualmachineIndex: virtualmachineIndex, networkInterfaceName: networkInterfaceName, ipConfigurationName: ipConfigurationName, subscriptionId: subscriptionId)
    }
    public static func UpdateTags(resourceGroupName: String, publicIpAddressName: String, subscriptionId: String, parameters: TagsObjectProtocol) -> PublicIPAddressesUpdateTags {
        return UpdateTagsCommand(resourceGroupName: resourceGroupName, publicIpAddressName: publicIpAddressName, subscriptionId: subscriptionId, parameters: parameters)
    }
}
}