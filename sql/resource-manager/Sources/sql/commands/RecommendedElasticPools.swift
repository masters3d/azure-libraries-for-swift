// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// RecommendedElasticPools is the the Azure SQL Database management API provides a RESTful set of web services that
// interact with Azure SQL Database services to manage your databases. The API enables you to create, retrieve, update,
// and delete databases.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct RecommendedElasticPools {
    public static func Get(subscriptionId: String, resourceGroupName: String, serverName: String, recommendedElasticPoolName: String) -> RecommendedElasticPoolsGet {
        return GetCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, serverName: serverName, recommendedElasticPoolName: recommendedElasticPoolName)
    }
    public static func ListByServer(subscriptionId: String, resourceGroupName: String, serverName: String) -> RecommendedElasticPoolsListByServer {
        return ListByServerCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, serverName: serverName)
    }
    public static func ListMetrics(subscriptionId: String, resourceGroupName: String, serverName: String, recommendedElasticPoolName: String) -> RecommendedElasticPoolsListMetrics {
        return ListMetricsCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, serverName: serverName, recommendedElasticPoolName: recommendedElasticPoolName)
    }
}
}