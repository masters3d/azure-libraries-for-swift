// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// ReplicationEvents is the client for the ReplicationEvents methods of the SiteRecoveryManagementClient service.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct ReplicationEvents {
    public static func Get(resourceName: String, resourceGroupName: String, subscriptionId: String, eventName: String) -> ReplicationEventsGet {
        return GetCommand(resourceName: resourceName, resourceGroupName: resourceGroupName, subscriptionId: subscriptionId, eventName: eventName)
    }
    public static func List(resourceName: String, resourceGroupName: String, subscriptionId: String) -> ReplicationEventsList {
        return ListCommand(resourceName: resourceName, resourceGroupName: resourceGroupName, subscriptionId: subscriptionId)
    }
}
}
