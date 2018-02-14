// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// ReplicationvCenters is the client for the ReplicationvCenters methods of the SiteRecoveryManagementClient service.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct ReplicationvCenters {
    public static func Create(resourceName: String, resourceGroupName: String, subscriptionId: String, fabricName: String, vCenterName: String, addVCenterRequest: AddVCenterRequestProtocol) -> ReplicationvCentersCreate {
        return CreateCommand(resourceName: resourceName, resourceGroupName: resourceGroupName, subscriptionId: subscriptionId, fabricName: fabricName, vCenterName: vCenterName, addVCenterRequest: addVCenterRequest)
    }
    public static func Delete(resourceName: String, resourceGroupName: String, subscriptionId: String, fabricName: String, vCenterName: String) -> ReplicationvCentersDelete {
        return DeleteCommand(resourceName: resourceName, resourceGroupName: resourceGroupName, subscriptionId: subscriptionId, fabricName: fabricName, vCenterName: vCenterName)
    }
    public static func Get(resourceName: String, resourceGroupName: String, subscriptionId: String, fabricName: String, vCenterName: String) -> ReplicationvCentersGet {
        return GetCommand(resourceName: resourceName, resourceGroupName: resourceGroupName, subscriptionId: subscriptionId, fabricName: fabricName, vCenterName: vCenterName)
    }
    public static func List(resourceName: String, resourceGroupName: String, subscriptionId: String) -> ReplicationvCentersList {
        return ListCommand(resourceName: resourceName, resourceGroupName: resourceGroupName, subscriptionId: subscriptionId)
    }
    public static func ListByReplicationFabrics(resourceName: String, resourceGroupName: String, subscriptionId: String, fabricName: String) -> ReplicationvCentersListByReplicationFabrics {
        return ListByReplicationFabricsCommand(resourceName: resourceName, resourceGroupName: resourceGroupName, subscriptionId: subscriptionId, fabricName: fabricName)
    }
    public static func Update(resourceName: String, resourceGroupName: String, subscriptionId: String, fabricName: String, vCenterName: String, updateVCenterRequest: UpdateVCenterRequestProtocol) -> ReplicationvCentersUpdate {
        return UpdateCommand(resourceName: resourceName, resourceGroupName: resourceGroupName, subscriptionId: subscriptionId, fabricName: fabricName, vCenterName: vCenterName, updateVCenterRequest: updateVCenterRequest)
    }
}
}
