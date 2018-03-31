// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// BackupResourceStorageConfigs is the open API 2.0 Specs for Azure RecoveryServices Backup service
import Foundation
import azureSwiftRuntime
extension Commands {
public struct BackupResourceStorageConfigs {
    public static func Get(vaultName: String, resourceGroupName: String, subscriptionId: String) -> BackupResourceStorageConfigsGet {
        return GetCommand(vaultName: vaultName, resourceGroupName: resourceGroupName, subscriptionId: subscriptionId)
    }
    public static func Update(vaultName: String, resourceGroupName: String, subscriptionId: String, parameters: BackupResourceConfigResourceProtocol) -> BackupResourceStorageConfigsUpdate {
        return UpdateCommand(vaultName: vaultName, resourceGroupName: resourceGroupName, subscriptionId: subscriptionId, parameters: parameters)
    }
}
}
