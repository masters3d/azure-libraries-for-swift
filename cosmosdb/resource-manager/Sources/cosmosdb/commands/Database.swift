// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// Database is the azure Cosmos DB Database Service Resource Provider REST API
import Foundation
import azureSwiftRuntime
extension Commands {
public struct Database {
    public static func ListMetricDefinitions(subscriptionId: String, resourceGroupName: String, accountName: String, databaseRid: String) -> DatabaseListMetricDefinitions {
        return ListMetricDefinitionsCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, accountName: accountName, databaseRid: databaseRid)
    }
    public static func ListMetrics(subscriptionId: String, resourceGroupName: String, accountName: String, databaseRid: String, filter: String) -> DatabaseListMetrics {
        return ListMetricsCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, accountName: accountName, databaseRid: databaseRid, filter: filter)
    }
    public static func ListUsages(subscriptionId: String, resourceGroupName: String, accountName: String, databaseRid: String) -> DatabaseListUsages {
        return ListUsagesCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, accountName: accountName, databaseRid: databaseRid)
    }
}
}