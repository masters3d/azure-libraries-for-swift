// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// ReplicationLinks is the the Azure SQL Database management API provides a RESTful set of web services that interact
// with Azure SQL Database services to manage your databases. The API enables you to create, retrieve, update, and
// delete databases.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct ReplicationLinks {
    public static func Delete(subscriptionId: String, resourceGroupName: String, serverName: String, databaseName: String, linkId: String) -> ReplicationLinksDelete {
        return DeleteCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, serverName: serverName, databaseName: databaseName, linkId: linkId)
    }
    public static func Failover(subscriptionId: String, resourceGroupName: String, serverName: String, databaseName: String, linkId: String) -> ReplicationLinksFailover {
        return FailoverCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, serverName: serverName, databaseName: databaseName, linkId: linkId)
    }
    public static func FailoverAllowDataLoss(subscriptionId: String, resourceGroupName: String, serverName: String, databaseName: String, linkId: String) -> ReplicationLinksFailoverAllowDataLoss {
        return FailoverAllowDataLossCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, serverName: serverName, databaseName: databaseName, linkId: linkId)
    }
    public static func Get(subscriptionId: String, resourceGroupName: String, serverName: String, databaseName: String, linkId: String) -> ReplicationLinksGet {
        return GetCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, serverName: serverName, databaseName: databaseName, linkId: linkId)
    }
    public static func ListByDatabase(subscriptionId: String, resourceGroupName: String, serverName: String, databaseName: String) -> ReplicationLinksListByDatabase {
        return ListByDatabaseCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, serverName: serverName, databaseName: databaseName)
    }
}
}
