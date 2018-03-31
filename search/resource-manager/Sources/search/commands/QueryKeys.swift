// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// QueryKeys is the client that can be used to manage Azure Search services and API keys.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct QueryKeys {
    public static func Create(resourceGroupName: String, searchServiceName: String, name: String, subscriptionId: String) -> QueryKeysCreate {
        return CreateCommand(resourceGroupName: resourceGroupName, searchServiceName: searchServiceName, name: name, subscriptionId: subscriptionId)
    }
    public static func Delete(resourceGroupName: String, searchServiceName: String, key: String, subscriptionId: String) -> QueryKeysDelete {
        return DeleteCommand(resourceGroupName: resourceGroupName, searchServiceName: searchServiceName, key: key, subscriptionId: subscriptionId)
    }
    public static func ListBySearchService(resourceGroupName: String, searchServiceName: String, subscriptionId: String) -> QueryKeysListBySearchService {
        return ListBySearchServiceCommand(resourceGroupName: resourceGroupName, searchServiceName: searchServiceName, subscriptionId: subscriptionId)
    }
}
}
