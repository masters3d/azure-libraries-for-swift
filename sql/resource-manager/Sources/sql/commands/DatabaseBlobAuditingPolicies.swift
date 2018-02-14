// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// DatabaseBlobAuditingPolicies is the the Azure SQL Database management API provides a RESTful set of web services
// that interact with Azure SQL Database services to manage your databases. The API enables you to create, retrieve,
// update, and delete databases.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct DatabaseBlobAuditingPolicies {
    public static func CreateOrUpdate(resourceGroupName: String, serverName: String, databaseName: String, blobAuditingPolicyName: String, subscriptionId: String, parameters: DatabaseBlobAuditingPolicyProtocol) -> DatabaseBlobAuditingPoliciesCreateOrUpdate {
        return CreateOrUpdateCommand(resourceGroupName: resourceGroupName, serverName: serverName, databaseName: databaseName, blobAuditingPolicyName: blobAuditingPolicyName, subscriptionId: subscriptionId, parameters: parameters)
    }
    public static func Get(resourceGroupName: String, serverName: String, databaseName: String, blobAuditingPolicyName: String, subscriptionId: String) -> DatabaseBlobAuditingPoliciesGet {
        return GetCommand(resourceGroupName: resourceGroupName, serverName: serverName, databaseName: databaseName, blobAuditingPolicyName: blobAuditingPolicyName, subscriptionId: subscriptionId)
    }
}
}
