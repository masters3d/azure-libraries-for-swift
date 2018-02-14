// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// PartitionKeyRangeId is the azure Cosmos DB Database Service Resource Provider REST API
import Foundation
import azureSwiftRuntime
extension Commands {
public struct PartitionKeyRangeId {
    public static func ListMetrics(subscriptionId: String, resourceGroupName: String, accountName: String, databaseRid: String, collectionRid: String, partitionKeyRangeId: String, filter: String) -> PartitionKeyRangeIdListMetrics {
        return ListMetricsCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, accountName: accountName, databaseRid: databaseRid, collectionRid: collectionRid, partitionKeyRangeId: partitionKeyRangeId, filter: filter)
    }
}
}
