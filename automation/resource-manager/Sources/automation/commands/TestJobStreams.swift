// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// TestJobStreams is the automation Client
import Foundation
import azureSwiftRuntime
extension Commands {
public struct TestJobStreams {
    public static func Get(resourceGroupName: String, automationAccountName: String, runbookName: String, jobStreamId: String, subscriptionId: String) -> TestJobStreamsGet {
        return GetCommand(resourceGroupName: resourceGroupName, automationAccountName: automationAccountName, runbookName: runbookName, jobStreamId: jobStreamId, subscriptionId: subscriptionId)
    }
    public static func ListByTestJob(resourceGroupName: String, automationAccountName: String, runbookName: String, subscriptionId: String) -> TestJobStreamsListByTestJob {
        return ListByTestJobCommand(resourceGroupName: resourceGroupName, automationAccountName: automationAccountName, runbookName: runbookName, subscriptionId: subscriptionId)
    }
}
}
