// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// DatabaseAccounts is the azure Cosmos DB Database Service Resource Provider REST API
import Foundation
import azureSwiftRuntime
extension Commands {
public struct DatabaseAccounts {
    public static func CheckNameExists(accountName: String) -> DatabaseAccountsCheckNameExists {
        return CheckNameExistsCommand(accountName: accountName)
    }
    public static func CreateOrUpdate(subscriptionId: String, resourceGroupName: String, accountName: String, createUpdateParameters: DatabaseAccountCreateUpdateParametersProtocol) -> DatabaseAccountsCreateOrUpdate {
        return CreateOrUpdateCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, accountName: accountName, createUpdateParameters: createUpdateParameters)
    }
    public static func Delete(subscriptionId: String, resourceGroupName: String, accountName: String) -> DatabaseAccountsDelete {
        return DeleteCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, accountName: accountName)
    }
    public static func FailoverPriorityChange(subscriptionId: String, resourceGroupName: String, accountName: String, failoverParameters: FailoverPoliciesProtocol) -> DatabaseAccountsFailoverPriorityChange {
        return FailoverPriorityChangeCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, accountName: accountName, failoverParameters: failoverParameters)
    }
    public static func Get(subscriptionId: String, resourceGroupName: String, accountName: String) -> DatabaseAccountsGet {
        return GetCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, accountName: accountName)
    }
    public static func List(subscriptionId: String) -> DatabaseAccountsList {
        return ListCommand(subscriptionId: subscriptionId)
    }
    public static func ListByResourceGroup(resourceGroupName: String, subscriptionId: String) -> DatabaseAccountsListByResourceGroup {
        return ListByResourceGroupCommand(resourceGroupName: resourceGroupName, subscriptionId: subscriptionId)
    }
    public static func ListConnectionStrings(subscriptionId: String, resourceGroupName: String, accountName: String) -> DatabaseAccountsListConnectionStrings {
        return ListConnectionStringsCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, accountName: accountName)
    }
    public static func ListKeys(subscriptionId: String, resourceGroupName: String, accountName: String) -> DatabaseAccountsListKeys {
        return ListKeysCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, accountName: accountName)
    }
    public static func ListMetricDefinitions(subscriptionId: String, resourceGroupName: String, accountName: String) -> DatabaseAccountsListMetricDefinitions {
        return ListMetricDefinitionsCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, accountName: accountName)
    }
    public static func ListMetrics(subscriptionId: String, resourceGroupName: String, accountName: String, filter: String) -> DatabaseAccountsListMetrics {
        return ListMetricsCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, accountName: accountName, filter: filter)
    }
    public static func ListReadOnlyKeys(subscriptionId: String, resourceGroupName: String, accountName: String) -> DatabaseAccountsListReadOnlyKeys {
        return ListReadOnlyKeysCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, accountName: accountName)
    }
    public static func ListUsages(subscriptionId: String, resourceGroupName: String, accountName: String) -> DatabaseAccountsListUsages {
        return ListUsagesCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, accountName: accountName)
    }
    public static func Patch(subscriptionId: String, resourceGroupName: String, accountName: String, updateParameters: DatabaseAccountPatchParametersProtocol) -> DatabaseAccountsPatch {
        return PatchCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, accountName: accountName, updateParameters: updateParameters)
    }
    public static func RegenerateKey(subscriptionId: String, resourceGroupName: String, accountName: String, keyToRegenerate: DatabaseAccountRegenerateKeyParametersProtocol) -> DatabaseAccountsRegenerateKey {
        return RegenerateKeyCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, accountName: accountName, keyToRegenerate: keyToRegenerate)
    }
}
}
