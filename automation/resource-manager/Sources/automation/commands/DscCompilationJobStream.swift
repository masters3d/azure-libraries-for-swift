// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// DscCompilationJobStream is the automation Client
import Foundation
import azureSwiftRuntime
extension Commands {
public struct DscCompilationJobStream {
    public static func ListByJob(resourceGroupName: String, automationAccountName: String, jobId: String, subscriptionId: String) -> DscCompilationJobStreamListByJob {
        return ListByJobCommand(resourceGroupName: resourceGroupName, automationAccountName: automationAccountName, jobId: jobId, subscriptionId: subscriptionId)
    }
}
}
