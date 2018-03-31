// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// Schemas is the REST API for Azure Logic Apps.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct Schemas {
    public static func CreateOrUpdate(subscriptionId: String, resourceGroupName: String, integrationAccountName: String, schemaName: String, schema: IntegrationAccountSchemaProtocol) -> SchemasCreateOrUpdate {
        return CreateOrUpdateCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, integrationAccountName: integrationAccountName, schemaName: schemaName, schema: schema)
    }
    public static func Delete(subscriptionId: String, resourceGroupName: String, integrationAccountName: String, schemaName: String) -> SchemasDelete {
        return DeleteCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, integrationAccountName: integrationAccountName, schemaName: schemaName)
    }
    public static func Get(subscriptionId: String, resourceGroupName: String, integrationAccountName: String, schemaName: String) -> SchemasGet {
        return GetCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, integrationAccountName: integrationAccountName, schemaName: schemaName)
    }
    public static func ListByIntegrationAccounts(subscriptionId: String, resourceGroupName: String, integrationAccountName: String) -> SchemasListByIntegrationAccounts {
        return ListByIntegrationAccountsCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, integrationAccountName: integrationAccountName)
    }
}
}
