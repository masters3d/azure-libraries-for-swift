// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// Workflows is the REST API for Azure Logic Apps.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct Workflows {
    public static func CreateOrUpdate(subscriptionId: String, resourceGroupName: String, workflowName: String, workflow: WorkflowProtocol) -> WorkflowsCreateOrUpdate {
        return CreateOrUpdateCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, workflowName: workflowName, workflow: workflow)
    }
    public static func Delete(subscriptionId: String, resourceGroupName: String, workflowName: String) -> WorkflowsDelete {
        return DeleteCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, workflowName: workflowName)
    }
    public static func Disable(subscriptionId: String, resourceGroupName: String, workflowName: String) -> WorkflowsDisable {
        return DisableCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, workflowName: workflowName)
    }
    public static func Enable(subscriptionId: String, resourceGroupName: String, workflowName: String) -> WorkflowsEnable {
        return EnableCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, workflowName: workflowName)
    }
    public static func GenerateUpgradedDefinition(subscriptionId: String, resourceGroupName: String, workflowName: String, parameters: GenerateUpgradedDefinitionParametersProtocol) -> WorkflowsGenerateUpgradedDefinition {
        return GenerateUpgradedDefinitionCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, workflowName: workflowName, parameters: parameters)
    }
    public static func Get(subscriptionId: String, resourceGroupName: String, workflowName: String) -> WorkflowsGet {
        return GetCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, workflowName: workflowName)
    }
    public static func ListByResourceGroup(subscriptionId: String, resourceGroupName: String) -> WorkflowsListByResourceGroup {
        return ListByResourceGroupCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName)
    }
    public static func ListBySubscription(subscriptionId: String) -> WorkflowsListBySubscription {
        return ListBySubscriptionCommand(subscriptionId: subscriptionId)
    }
    public static func ListSwagger(subscriptionId: String, resourceGroupName: String, workflowName: String) -> WorkflowsListSwagger {
        return ListSwaggerCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, workflowName: workflowName)
    }
    public static func RegenerateAccessKey(subscriptionId: String, resourceGroupName: String, workflowName: String, keyType: RegenerateActionParameterProtocol) -> WorkflowsRegenerateAccessKey {
        return RegenerateAccessKeyCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, workflowName: workflowName, keyType: keyType)
    }
    public static func Update(subscriptionId: String, resourceGroupName: String, workflowName: String, workflow: WorkflowProtocol) -> WorkflowsUpdate {
        return UpdateCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, workflowName: workflowName, workflow: workflow)
    }
    public static func Validate(subscriptionId: String, resourceGroupName: String, location: String, workflowName: String, workflow: WorkflowProtocol) -> WorkflowsValidate {
        return ValidateCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, location: location, workflowName: workflowName, workflow: workflow)
    }
}
}
