// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// Subscriptions is the azure Service Bus client
import Foundation
import azureSwiftRuntime
extension Commands {
public struct Subscriptions {
    public static func CreateOrUpdate(resourceGroupName: String, namespaceName: String, topicName: String, subscriptionName: String, subscriptionId: String, parameters: SBSubscriptionProtocol) -> SubscriptionsCreateOrUpdate {
        return CreateOrUpdateCommand(resourceGroupName: resourceGroupName, namespaceName: namespaceName, topicName: topicName, subscriptionName: subscriptionName, subscriptionId: subscriptionId, parameters: parameters)
    }
    public static func Delete(resourceGroupName: String, namespaceName: String, topicName: String, subscriptionName: String, subscriptionId: String) -> SubscriptionsDelete {
        return DeleteCommand(resourceGroupName: resourceGroupName, namespaceName: namespaceName, topicName: topicName, subscriptionName: subscriptionName, subscriptionId: subscriptionId)
    }
    public static func Get(resourceGroupName: String, namespaceName: String, topicName: String, subscriptionName: String, subscriptionId: String) -> SubscriptionsGet {
        return GetCommand(resourceGroupName: resourceGroupName, namespaceName: namespaceName, topicName: topicName, subscriptionName: subscriptionName, subscriptionId: subscriptionId)
    }
    public static func ListByTopic(resourceGroupName: String, namespaceName: String, topicName: String, subscriptionId: String) -> SubscriptionsListByTopic {
        return ListByTopicCommand(resourceGroupName: resourceGroupName, namespaceName: namespaceName, topicName: topicName, subscriptionId: subscriptionId)
    }
}
}
