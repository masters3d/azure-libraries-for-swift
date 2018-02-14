// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// ActivityLogs is the monitor Management Client
import Foundation
import azureSwiftRuntime
extension Commands {
public struct ActivityLogs {
    public static func List(subscriptionId: String) -> ActivityLogsList {
        return ListCommand(subscriptionId: subscriptionId)
    }
}
}
