// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// CollectionPartitionRegion is the azure Cosmos DB Database Service Resource Provider REST API
import Foundation
import azureSwiftRuntime
extension Commands {
public struct CollectionPartitionRegion {
    public static func ListMetrics(subscriptionId: String, resourceGroupName: String, accountName: String, region: String, databaseRid: String, collectionRid: String, filter: String) -> CollectionPartitionRegionListMetrics {
        return ListMetricsCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, accountName: accountName, region: region, databaseRid: databaseRid, collectionRid: collectionRid, filter: filter)
    }
}
}
