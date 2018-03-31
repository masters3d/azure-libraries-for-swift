// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// Sessions is the REST API for Azure Logic Apps.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct Sessions {
    public static func CreateOrUpdate(subscriptionId: String, resourceGroupName: String, integrationAccountName: String, sessionName: String, session: IntegrationAccountSessionProtocol) -> SessionsCreateOrUpdate {
        return CreateOrUpdateCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, integrationAccountName: integrationAccountName, sessionName: sessionName, session: session)
    }
    public static func Delete(subscriptionId: String, resourceGroupName: String, integrationAccountName: String, sessionName: String) -> SessionsDelete {
        return DeleteCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, integrationAccountName: integrationAccountName, sessionName: sessionName)
    }
    public static func Get(subscriptionId: String, resourceGroupName: String, integrationAccountName: String, sessionName: String) -> SessionsGet {
        return GetCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, integrationAccountName: integrationAccountName, sessionName: sessionName)
    }
    public static func ListByIntegrationAccounts(subscriptionId: String, resourceGroupName: String, integrationAccountName: String) -> SessionsListByIntegrationAccounts {
        return ListByIntegrationAccountsCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, integrationAccountName: integrationAccountName)
    }
}
}
