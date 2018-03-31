// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// DatabaseAutomaticTuning is the the Azure SQL Database management API provides a RESTful set of web services that
// interact with Azure SQL Database services to manage your databases. The API enables you to create, retrieve, update,
// and delete databases.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct DatabaseAutomaticTuning {
    public static func Get(resourceGroupName: String, serverName: String, databaseName: String, subscriptionId: String) -> DatabaseAutomaticTuningGet {
        return GetCommand(resourceGroupName: resourceGroupName, serverName: serverName, databaseName: databaseName, subscriptionId: subscriptionId)
    }
    public static func Update(resourceGroupName: String, serverName: String, databaseName: String, subscriptionId: String, parameters: DatabaseAutomaticTuningProtocol) -> DatabaseAutomaticTuningUpdate {
        return UpdateCommand(resourceGroupName: resourceGroupName, serverName: serverName, databaseName: databaseName, subscriptionId: subscriptionId, parameters: parameters)
    }
}
}
