// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// WorkflowTriggerHistories is the REST API for Azure Logic Apps.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct WorkflowTriggerHistories {
    public static func Get(subscriptionId: String, resourceGroupName: String, workflowName: String, triggerName: String, historyName: String) -> WorkflowTriggerHistoriesGet {
        return GetCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, workflowName: workflowName, triggerName: triggerName, historyName: historyName)
    }
    public static func List(subscriptionId: String, resourceGroupName: String, workflowName: String, triggerName: String) -> WorkflowTriggerHistoriesList {
        return ListCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, workflowName: workflowName, triggerName: triggerName)
    }
    public static func Resubmit(subscriptionId: String, resourceGroupName: String, workflowName: String, triggerName: String, historyName: String) -> WorkflowTriggerHistoriesResubmit {
        return ResubmitCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, workflowName: workflowName, triggerName: triggerName, historyName: historyName)
    }
}
}