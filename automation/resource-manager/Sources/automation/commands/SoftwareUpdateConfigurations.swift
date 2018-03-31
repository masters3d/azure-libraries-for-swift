// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// SoftwareUpdateConfigurations is the automation Client
import Foundation
import azureSwiftRuntime
extension Commands {
public struct SoftwareUpdateConfigurations {
    public static func Create(subscriptionId: String, resourceGroupName: String, automationAccountName: String, softwareUpdateConfigurationName: String, parameters: SoftwareUpdateConfigurationProtocol) -> SoftwareUpdateConfigurationsCreate {
        return CreateCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, automationAccountName: automationAccountName, softwareUpdateConfigurationName: softwareUpdateConfigurationName, parameters: parameters)
    }
    public static func Delete(subscriptionId: String, resourceGroupName: String, automationAccountName: String, softwareUpdateConfigurationName: String) -> SoftwareUpdateConfigurationsDelete {
        return DeleteCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, automationAccountName: automationAccountName, softwareUpdateConfigurationName: softwareUpdateConfigurationName)
    }
    public static func GetByName(subscriptionId: String, resourceGroupName: String, automationAccountName: String, softwareUpdateConfigurationName: String) -> SoftwareUpdateConfigurationsGetByName {
        return GetByNameCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, automationAccountName: automationAccountName, softwareUpdateConfigurationName: softwareUpdateConfigurationName)
    }
    public static func List(subscriptionId: String, resourceGroupName: String, automationAccountName: String) -> SoftwareUpdateConfigurationsList {
        return ListCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, automationAccountName: automationAccountName)
    }
}
}
