// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// Budgets is the consumption management client provides access to consumption resources for Azure Enterprise
// Subscriptions.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct Budgets {
    public static func CreateOrUpdate(subscriptionId: String, budgetName: String, parameters: BudgetProtocol) -> BudgetsCreateOrUpdate {
        return CreateOrUpdateCommand(subscriptionId: subscriptionId, budgetName: budgetName, parameters: parameters)
    }
    public static func CreateOrUpdateByResourceGroupName(subscriptionId: String, resourceGroupName: String, budgetName: String, parameters: BudgetProtocol) -> BudgetsCreateOrUpdateByResourceGroupName {
        return CreateOrUpdateByResourceGroupNameCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, budgetName: budgetName, parameters: parameters)
    }
    public static func Delete(subscriptionId: String, budgetName: String) -> BudgetsDelete {
        return DeleteCommand(subscriptionId: subscriptionId, budgetName: budgetName)
    }
    public static func DeleteByResourceGroupName(subscriptionId: String, resourceGroupName: String, budgetName: String) -> BudgetsDeleteByResourceGroupName {
        return DeleteByResourceGroupNameCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, budgetName: budgetName)
    }
    public static func Get(subscriptionId: String, budgetName: String) -> BudgetsGet {
        return GetCommand(subscriptionId: subscriptionId, budgetName: budgetName)
    }
    public static func GetByResourceGroupName(subscriptionId: String, resourceGroupName: String, budgetName: String) -> BudgetsGetByResourceGroupName {
        return GetByResourceGroupNameCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, budgetName: budgetName)
    }
    public static func List(subscriptionId: String) -> BudgetsList {
        return ListCommand(subscriptionId: subscriptionId)
    }
    public static func ListByResourceGroupName(subscriptionId: String, resourceGroupName: String) -> BudgetsListByResourceGroupName {
        return ListByResourceGroupNameCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName)
    }
}
}
