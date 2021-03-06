// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// Usage is the the Azure Storage Management API.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct Usage {
    public static func List(subscriptionId: String) -> UsageList {
        return ListCommand(subscriptionId: subscriptionId)
    }
}
}
