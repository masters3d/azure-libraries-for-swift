// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// ReplicationStorageClassifications is the client for the ReplicationStorageClassifications methods of the
// SiteRecoveryManagementClient service.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct ReplicationStorageClassifications {
    public static func Get(resourceName: String, resourceGroupName: String, subscriptionId: String, fabricName: String, storageClassificationName: String) -> ReplicationStorageClassificationsGet {
        return GetCommand(resourceName: resourceName, resourceGroupName: resourceGroupName, subscriptionId: subscriptionId, fabricName: fabricName, storageClassificationName: storageClassificationName)
    }
    public static func List(resourceName: String, resourceGroupName: String, subscriptionId: String) -> ReplicationStorageClassificationsList {
        return ListCommand(resourceName: resourceName, resourceGroupName: resourceGroupName, subscriptionId: subscriptionId)
    }
    public static func ListByReplicationFabrics(resourceName: String, resourceGroupName: String, subscriptionId: String, fabricName: String) -> ReplicationStorageClassificationsListByReplicationFabrics {
        return ListByReplicationFabricsCommand(resourceName: resourceName, resourceGroupName: resourceGroupName, subscriptionId: subscriptionId, fabricName: fabricName)
    }
}
}
