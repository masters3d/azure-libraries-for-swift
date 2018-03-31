// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// SyncAgents is the the Azure SQL Database management API provides a RESTful set of web services that interact with
// Azure SQL Database services to manage your databases. The API enables you to create, retrieve, update, and delete
// databases.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct SyncAgents {
    public static func CreateOrUpdate(resourceGroupName: String, serverName: String, syncAgentName: String, subscriptionId: String, parameters: SyncAgentProtocol) -> SyncAgentsCreateOrUpdate {
        return CreateOrUpdateCommand(resourceGroupName: resourceGroupName, serverName: serverName, syncAgentName: syncAgentName, subscriptionId: subscriptionId, parameters: parameters)
    }
    public static func Delete(resourceGroupName: String, serverName: String, syncAgentName: String, subscriptionId: String) -> SyncAgentsDelete {
        return DeleteCommand(resourceGroupName: resourceGroupName, serverName: serverName, syncAgentName: syncAgentName, subscriptionId: subscriptionId)
    }
    public static func GenerateKey(resourceGroupName: String, serverName: String, syncAgentName: String, subscriptionId: String) -> SyncAgentsGenerateKey {
        return GenerateKeyCommand(resourceGroupName: resourceGroupName, serverName: serverName, syncAgentName: syncAgentName, subscriptionId: subscriptionId)
    }
    public static func Get(resourceGroupName: String, serverName: String, syncAgentName: String, subscriptionId: String) -> SyncAgentsGet {
        return GetCommand(resourceGroupName: resourceGroupName, serverName: serverName, syncAgentName: syncAgentName, subscriptionId: subscriptionId)
    }
    public static func ListByServer(resourceGroupName: String, serverName: String, subscriptionId: String) -> SyncAgentsListByServer {
        return ListByServerCommand(resourceGroupName: resourceGroupName, serverName: serverName, subscriptionId: subscriptionId)
    }
    public static func ListLinkedDatabases(resourceGroupName: String, serverName: String, syncAgentName: String, subscriptionId: String) -> SyncAgentsListLinkedDatabases {
        return ListLinkedDatabasesCommand(resourceGroupName: resourceGroupName, serverName: serverName, syncAgentName: syncAgentName, subscriptionId: subscriptionId)
    }
}
}
