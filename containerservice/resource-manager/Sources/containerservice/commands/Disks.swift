// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// Disks is the compute Client
import Foundation
import azureSwiftRuntime
extension Commands {
public struct Disks {
    public static func CreateOrUpdate(subscriptionId: String, resourceGroupName: String, diskName: String, disk: DiskProtocol) -> DisksCreateOrUpdate {
        return CreateOrUpdateCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, diskName: diskName, disk: disk)
    }
    public static func Delete(subscriptionId: String, resourceGroupName: String, diskName: String) -> DisksDelete {
        return DeleteCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, diskName: diskName)
    }
    public static func Get(subscriptionId: String, resourceGroupName: String, diskName: String) -> DisksGet {
        return GetCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, diskName: diskName)
    }
    public static func GrantAccess(subscriptionId: String, resourceGroupName: String, diskName: String, grantAccessData: GrantAccessDataProtocol) -> DisksGrantAccess {
        return GrantAccessCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, diskName: diskName, grantAccessData: grantAccessData)
    }
    public static func List(subscriptionId: String) -> DisksList {
        return ListCommand(subscriptionId: subscriptionId)
    }
    public static func ListByResourceGroup(subscriptionId: String, resourceGroupName: String) -> DisksListByResourceGroup {
        return ListByResourceGroupCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName)
    }
    public static func RevokeAccess(subscriptionId: String, resourceGroupName: String, diskName: String) -> DisksRevokeAccess {
        return RevokeAccessCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, diskName: diskName)
    }
    public static func Update(subscriptionId: String, resourceGroupName: String, diskName: String, disk: DiskUpdateProtocol) -> DisksUpdate {
        return UpdateCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, diskName: diskName, disk: disk)
    }
}
}
