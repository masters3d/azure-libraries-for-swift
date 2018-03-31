// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// ComputePolicies is the creates an Azure Data Lake Analytics account management client.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct ComputePolicies {
    public static func CreateOrUpdate(subscriptionId: String, resourceGroupName: String, accountName: String, computePolicyName: String, parameters: CreateOrUpdateComputePolicyParametersProtocol) -> ComputePoliciesCreateOrUpdate {
        return CreateOrUpdateCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, accountName: accountName, computePolicyName: computePolicyName, parameters: parameters)
    }
    public static func Delete(subscriptionId: String, resourceGroupName: String, accountName: String, computePolicyName: String) -> ComputePoliciesDelete {
        return DeleteCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, accountName: accountName, computePolicyName: computePolicyName)
    }
    public static func Get(subscriptionId: String, resourceGroupName: String, accountName: String, computePolicyName: String) -> ComputePoliciesGet {
        return GetCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, accountName: accountName, computePolicyName: computePolicyName)
    }
    public static func ListByAccount(subscriptionId: String, resourceGroupName: String, accountName: String) -> ComputePoliciesListByAccount {
        return ListByAccountCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, accountName: accountName)
    }
    public static func Update(subscriptionId: String, resourceGroupName: String, accountName: String, computePolicyName: String) -> ComputePoliciesUpdate {
        return UpdateCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, accountName: accountName, computePolicyName: computePolicyName)
    }
}
}
