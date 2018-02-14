// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// StorageAccounts is the creates an Azure Data Lake Analytics account management client.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct StorageAccounts {
    public static func Add(subscriptionId: String, resourceGroupName: String, accountName: String, storageAccountName: String, parameters: AddStorageAccountParametersProtocol) -> StorageAccountsAdd {
        return AddCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, accountName: accountName, storageAccountName: storageAccountName, parameters: parameters)
    }
    public static func Delete(subscriptionId: String, resourceGroupName: String, accountName: String, storageAccountName: String) -> StorageAccountsDelete {
        return DeleteCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, accountName: accountName, storageAccountName: storageAccountName)
    }
    public static func Get(subscriptionId: String, resourceGroupName: String, accountName: String, storageAccountName: String) -> StorageAccountsGet {
        return GetCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, accountName: accountName, storageAccountName: storageAccountName)
    }
    public static func GetStorageContainer(subscriptionId: String, resourceGroupName: String, accountName: String, storageAccountName: String, containerName: String) -> StorageAccountsGetStorageContainer {
        return GetStorageContainerCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, accountName: accountName, storageAccountName: storageAccountName, containerName: containerName)
    }
    public static func ListByAccount(subscriptionId: String, resourceGroupName: String, accountName: String) -> StorageAccountsListByAccount {
        return ListByAccountCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, accountName: accountName)
    }
    public static func ListSasTokens(subscriptionId: String, resourceGroupName: String, accountName: String, storageAccountName: String, containerName: String) -> StorageAccountsListSasTokens {
        return ListSasTokensCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, accountName: accountName, storageAccountName: storageAccountName, containerName: containerName)
    }
    public static func ListStorageContainers(subscriptionId: String, resourceGroupName: String, accountName: String, storageAccountName: String) -> StorageAccountsListStorageContainers {
        return ListStorageContainersCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, accountName: accountName, storageAccountName: storageAccountName)
    }
    public static func Update(subscriptionId: String, resourceGroupName: String, accountName: String, storageAccountName: String) -> StorageAccountsUpdate {
        return UpdateCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, accountName: accountName, storageAccountName: storageAccountName)
    }
}
}
