// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// Users is the the DevTest Labs Client.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct Users {
    public static func CreateOrUpdate(subscriptionId: String, resourceGroupName: String, labName: String, name: String, user: UserProtocol) -> UsersCreateOrUpdate {
        return CreateOrUpdateCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, labName: labName, name: name, user: user)
    }
    public static func Delete(subscriptionId: String, resourceGroupName: String, labName: String, name: String) -> UsersDelete {
        return DeleteCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, labName: labName, name: name)
    }
    public static func Get(subscriptionId: String, resourceGroupName: String, labName: String, name: String) -> UsersGet {
        return GetCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, labName: labName, name: name)
    }
    public static func List(subscriptionId: String, resourceGroupName: String, labName: String) -> UsersList {
        return ListCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, labName: labName)
    }
    public static func Update(subscriptionId: String, resourceGroupName: String, labName: String, name: String, user: UserFragmentProtocol) -> UsersUpdate {
        return UpdateCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, labName: labName, name: name, user: user)
    }
}
}
