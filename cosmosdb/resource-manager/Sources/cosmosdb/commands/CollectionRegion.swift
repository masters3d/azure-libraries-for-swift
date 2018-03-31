// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// CollectionRegion is the azure Cosmos DB Database Service Resource Provider REST API
import Foundation
import azureSwiftRuntime
extension Commands {
public struct CollectionRegion {
    public static func ListMetrics(subscriptionId: String, resourceGroupName: String, accountName: String, region: String, databaseRid: String, collectionRid: String, filter: String) -> CollectionRegionListMetrics {
        return ListMetricsCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, accountName: accountName, region: region, databaseRid: databaseRid, collectionRid: collectionRid, filter: filter)
    }
}
}
