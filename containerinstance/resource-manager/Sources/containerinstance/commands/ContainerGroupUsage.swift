// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// ContainerGroupUsage is the client for the ContainerGroupUsage methods of the ContainerInstanceManagementClient
// service.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct ContainerGroupUsage {
    public static func List(subscriptionId: String, location: String) -> ContainerGroupUsageList {
        return ListCommand(subscriptionId: subscriptionId, location: location)
    }
}
}
