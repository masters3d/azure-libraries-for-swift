// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// BackupLongTermRetentionVaults is the the Azure SQL Database management API provides a RESTful set of web services
// that interact with Azure SQL Database services to manage your databases. The API enables you to create, retrieve,
// update, and delete databases.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct BackupLongTermRetentionVaults {
    public static func CreateOrUpdate(subscriptionId: String, resourceGroupName: String, serverName: String, backupLongTermRetentionVaultName: String, parameters: BackupLongTermRetentionVaultProtocol) -> BackupLongTermRetentionVaultsCreateOrUpdate {
        return CreateOrUpdateCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, serverName: serverName, backupLongTermRetentionVaultName: backupLongTermRetentionVaultName, parameters: parameters)
    }
    public static func Get(subscriptionId: String, resourceGroupName: String, serverName: String, backupLongTermRetentionVaultName: String) -> BackupLongTermRetentionVaultsGet {
        return GetCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, serverName: serverName, backupLongTermRetentionVaultName: backupLongTermRetentionVaultName)
    }
    public static func ListByServer(subscriptionId: String, resourceGroupName: String, serverName: String) -> BackupLongTermRetentionVaultsListByServer {
        return ListByServerCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, serverName: serverName)
    }
}
}
