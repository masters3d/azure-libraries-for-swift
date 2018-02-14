// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// Interactions is the the Azure Customer Insights management API provides a RESTful set of web services that interact
// with Azure Customer Insights service to manage your resources. The API has entities that capture the relationship
// between an end user and the Azure Customer Insights service.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct Interactions {
    public static func CreateOrUpdate(resourceGroupName: String, hubName: String, interactionName: String, subscriptionId: String, parameters: InteractionResourceFormatProtocol) -> InteractionsCreateOrUpdate {
        return CreateOrUpdateCommand(resourceGroupName: resourceGroupName, hubName: hubName, interactionName: interactionName, subscriptionId: subscriptionId, parameters: parameters)
    }
    public static func Get(resourceGroupName: String, hubName: String, interactionName: String, subscriptionId: String) -> InteractionsGet {
        return GetCommand(resourceGroupName: resourceGroupName, hubName: hubName, interactionName: interactionName, subscriptionId: subscriptionId)
    }
    public static func ListByHub(resourceGroupName: String, hubName: String, subscriptionId: String) -> InteractionsListByHub {
        return ListByHubCommand(resourceGroupName: resourceGroupName, hubName: hubName, subscriptionId: subscriptionId)
    }
    public static func SuggestRelationshipLinks(resourceGroupName: String, hubName: String, interactionName: String, subscriptionId: String) -> InteractionsSuggestRelationshipLinks {
        return SuggestRelationshipLinksCommand(resourceGroupName: resourceGroupName, hubName: hubName, interactionName: interactionName, subscriptionId: subscriptionId)
    }
}
}
