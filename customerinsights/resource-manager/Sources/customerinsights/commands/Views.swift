// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// Views is the the Azure Customer Insights management API provides a RESTful set of web services that interact with
// Azure Customer Insights service to manage your resources. The API has entities that capture the relationship between
// an end user and the Azure Customer Insights service.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct Views {
    public static func CreateOrUpdate(resourceGroupName: String, hubName: String, viewName: String, subscriptionId: String, parameters: ViewResourceFormatProtocol) -> ViewsCreateOrUpdate {
        return CreateOrUpdateCommand(resourceGroupName: resourceGroupName, hubName: hubName, viewName: viewName, subscriptionId: subscriptionId, parameters: parameters)
    }
    public static func Delete(resourceGroupName: String, hubName: String, viewName: String, subscriptionId: String, userId: String) -> ViewsDelete {
        return DeleteCommand(resourceGroupName: resourceGroupName, hubName: hubName, viewName: viewName, subscriptionId: subscriptionId, userId: userId)
    }
    public static func Get(resourceGroupName: String, hubName: String, viewName: String, subscriptionId: String, userId: String) -> ViewsGet {
        return GetCommand(resourceGroupName: resourceGroupName, hubName: hubName, viewName: viewName, subscriptionId: subscriptionId, userId: userId)
    }
    public static func ListByHub(resourceGroupName: String, hubName: String, subscriptionId: String, userId: String) -> ViewsListByHub {
        return ListByHubCommand(resourceGroupName: resourceGroupName, hubName: hubName, subscriptionId: subscriptionId, userId: userId)
    }
}
}
