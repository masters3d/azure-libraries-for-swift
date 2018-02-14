// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// Roles is the the Azure Customer Insights management API provides a RESTful set of web services that interact with
// Azure Customer Insights service to manage your resources. The API has entities that capture the relationship between
// an end user and the Azure Customer Insights service.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct Roles {
    public static func ListByHub(resourceGroupName: String, hubName: String, subscriptionId: String) -> RolesListByHub {
        return ListByHubCommand(resourceGroupName: resourceGroupName, hubName: hubName, subscriptionId: subscriptionId)
    }
}
}
