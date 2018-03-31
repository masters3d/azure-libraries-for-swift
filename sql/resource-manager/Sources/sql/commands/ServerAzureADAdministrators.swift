// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// ServerAzureADAdministrators is the the Azure SQL Database management API provides a RESTful set of web services that
// interact with Azure SQL Database services to manage your databases. The API enables you to create, retrieve, update,
// and delete databases.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct ServerAzureADAdministrators {
    public static func CreateOrUpdate(subscriptionId: String, resourceGroupName: String, serverName: String, administratorName: String, properties: ServerAzureADAdministratorProtocol) -> ServerAzureADAdministratorsCreateOrUpdate {
        return CreateOrUpdateCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, serverName: serverName, administratorName: administratorName, properties: properties)
    }
    public static func Delete(subscriptionId: String, resourceGroupName: String, serverName: String, administratorName: String) -> ServerAzureADAdministratorsDelete {
        return DeleteCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, serverName: serverName, administratorName: administratorName)
    }
    public static func Get(subscriptionId: String, resourceGroupName: String, serverName: String, administratorName: String) -> ServerAzureADAdministratorsGet {
        return GetCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, serverName: serverName, administratorName: administratorName)
    }
    public static func ListByServer(subscriptionId: String, resourceGroupName: String, serverName: String) -> ServerAzureADAdministratorsListByServer {
        return ListByServerCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, serverName: serverName)
    }
}
}
