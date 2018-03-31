// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// Environments is the the DevTest Labs Client.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct Environments {
    public static func CreateOrUpdate(subscriptionId: String, resourceGroupName: String, labName: String, userName: String, name: String, dtlEnvironment: DtlEnvironmentProtocol) -> EnvironmentsCreateOrUpdate {
        return CreateOrUpdateCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, labName: labName, userName: userName, name: name, dtlEnvironment: dtlEnvironment)
    }
    public static func Delete(subscriptionId: String, resourceGroupName: String, labName: String, userName: String, name: String) -> EnvironmentsDelete {
        return DeleteCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, labName: labName, userName: userName, name: name)
    }
    public static func Get(subscriptionId: String, resourceGroupName: String, labName: String, userName: String, name: String) -> EnvironmentsGet {
        return GetCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, labName: labName, userName: userName, name: name)
    }
    public static func List(subscriptionId: String, resourceGroupName: String, labName: String, userName: String) -> EnvironmentsList {
        return ListCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, labName: labName, userName: userName)
    }
}
}
