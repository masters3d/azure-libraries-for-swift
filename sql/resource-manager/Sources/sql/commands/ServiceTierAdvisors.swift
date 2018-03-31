// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// ServiceTierAdvisors is the the Azure SQL Database management API provides a RESTful set of web services that
// interact with Azure SQL Database services to manage your databases. The API enables you to create, retrieve, update,
// and delete databases.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct ServiceTierAdvisors {
    public static func Get(subscriptionId: String, resourceGroupName: String, serverName: String, databaseName: String, serviceTierAdvisorName: String) -> ServiceTierAdvisorsGet {
        return GetCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, serverName: serverName, databaseName: databaseName, serviceTierAdvisorName: serviceTierAdvisorName)
    }
    public static func ListByDatabase(subscriptionId: String, resourceGroupName: String, serverName: String, databaseName: String) -> ServiceTierAdvisorsListByDatabase {
        return ListByDatabaseCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, serverName: serverName, databaseName: databaseName)
    }
}
}
