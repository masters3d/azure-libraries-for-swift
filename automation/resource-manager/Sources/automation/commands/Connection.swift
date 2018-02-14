// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// Connection is the automation Client
import Foundation
import azureSwiftRuntime
extension Commands {
public struct Connection {
    public static func CreateOrUpdate(resourceGroupName: String, automationAccountName: String, connectionName: String, subscriptionId: String, parameters: ConnectionCreateOrUpdateParametersProtocol) -> ConnectionCreateOrUpdate {
        return CreateOrUpdateCommand(resourceGroupName: resourceGroupName, automationAccountName: automationAccountName, connectionName: connectionName, subscriptionId: subscriptionId, parameters: parameters)
    }
    public static func Delete(resourceGroupName: String, automationAccountName: String, connectionName: String, subscriptionId: String) -> ConnectionDelete {
        return DeleteCommand(resourceGroupName: resourceGroupName, automationAccountName: automationAccountName, connectionName: connectionName, subscriptionId: subscriptionId)
    }
    public static func Get(resourceGroupName: String, automationAccountName: String, connectionName: String, subscriptionId: String) -> ConnectionGet {
        return GetCommand(resourceGroupName: resourceGroupName, automationAccountName: automationAccountName, connectionName: connectionName, subscriptionId: subscriptionId)
    }
    public static func ListByAutomationAccount(resourceGroupName: String, automationAccountName: String, subscriptionId: String) -> ConnectionListByAutomationAccount {
        return ListByAutomationAccountCommand(resourceGroupName: resourceGroupName, automationAccountName: automationAccountName, subscriptionId: subscriptionId)
    }
    public static func Update(resourceGroupName: String, automationAccountName: String, connectionName: String, subscriptionId: String, parameters: ConnectionUpdateParametersProtocol) -> ConnectionUpdate {
        return UpdateCommand(resourceGroupName: resourceGroupName, automationAccountName: automationAccountName, connectionName: connectionName, subscriptionId: subscriptionId, parameters: parameters)
    }
}
}