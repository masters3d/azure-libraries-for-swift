// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// ConnectionType is the automation Client
import Foundation
import azureSwiftRuntime
extension Commands {
public struct ConnectionType {
    public static func CreateOrUpdate(resourceGroupName: String, automationAccountName: String, connectionTypeName: String, subscriptionId: String, parameters: ConnectionTypeCreateOrUpdateParametersProtocol) -> ConnectionTypeCreateOrUpdate {
        return CreateOrUpdateCommand(resourceGroupName: resourceGroupName, automationAccountName: automationAccountName, connectionTypeName: connectionTypeName, subscriptionId: subscriptionId, parameters: parameters)
    }
    public static func Delete(resourceGroupName: String, automationAccountName: String, connectionTypeName: String, subscriptionId: String) -> ConnectionTypeDelete {
        return DeleteCommand(resourceGroupName: resourceGroupName, automationAccountName: automationAccountName, connectionTypeName: connectionTypeName, subscriptionId: subscriptionId)
    }
    public static func Get(resourceGroupName: String, automationAccountName: String, connectionTypeName: String, subscriptionId: String) -> ConnectionTypeGet {
        return GetCommand(resourceGroupName: resourceGroupName, automationAccountName: automationAccountName, connectionTypeName: connectionTypeName, subscriptionId: subscriptionId)
    }
    public static func ListByAutomationAccount(resourceGroupName: String, automationAccountName: String, subscriptionId: String) -> ConnectionTypeListByAutomationAccount {
        return ListByAutomationAccountCommand(resourceGroupName: resourceGroupName, automationAccountName: automationAccountName, subscriptionId: subscriptionId)
    }
}
}
