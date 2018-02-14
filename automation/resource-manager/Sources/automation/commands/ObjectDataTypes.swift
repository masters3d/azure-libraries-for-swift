// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// ObjectDataTypes is the automation Client
import Foundation
import azureSwiftRuntime
extension Commands {
public struct ObjectDataTypes {
    public static func ListFieldsByModuleAndType(resourceGroupName: String, automationAccountName: String, moduleName: String, typeName: String, subscriptionId: String) -> ObjectDataTypesListFieldsByModuleAndType {
        return ListFieldsByModuleAndTypeCommand(resourceGroupName: resourceGroupName, automationAccountName: automationAccountName, moduleName: moduleName, typeName: typeName, subscriptionId: subscriptionId)
    }
    public static func ListFieldsByType(resourceGroupName: String, automationAccountName: String, typeName: String, subscriptionId: String) -> ObjectDataTypesListFieldsByType {
        return ListFieldsByTypeCommand(resourceGroupName: resourceGroupName, automationAccountName: automationAccountName, typeName: typeName, subscriptionId: subscriptionId)
    }
}
}