// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// Kpi is the the Azure Customer Insights management API provides a RESTful set of web services that interact with
// Azure Customer Insights service to manage your resources. The API has entities that capture the relationship between
// an end user and the Azure Customer Insights service.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct Kpi {
    public static func CreateOrUpdate(resourceGroupName: String, hubName: String, kpiName: String, subscriptionId: String, parameters: KpiResourceFormatProtocol) -> KpiCreateOrUpdate {
        return CreateOrUpdateCommand(resourceGroupName: resourceGroupName, hubName: hubName, kpiName: kpiName, subscriptionId: subscriptionId, parameters: parameters)
    }
    public static func Delete(resourceGroupName: String, hubName: String, kpiName: String, subscriptionId: String) -> KpiDelete {
        return DeleteCommand(resourceGroupName: resourceGroupName, hubName: hubName, kpiName: kpiName, subscriptionId: subscriptionId)
    }
    public static func Get(resourceGroupName: String, hubName: String, kpiName: String, subscriptionId: String) -> KpiGet {
        return GetCommand(resourceGroupName: resourceGroupName, hubName: hubName, kpiName: kpiName, subscriptionId: subscriptionId)
    }
    public static func ListByHub(resourceGroupName: String, hubName: String, subscriptionId: String) -> KpiListByHub {
        return ListByHubCommand(resourceGroupName: resourceGroupName, hubName: hubName, subscriptionId: subscriptionId)
    }
    public static func Reprocess(resourceGroupName: String, hubName: String, kpiName: String, subscriptionId: String) -> KpiReprocess {
        return ReprocessCommand(resourceGroupName: resourceGroupName, hubName: hubName, kpiName: kpiName, subscriptionId: subscriptionId)
    }
}
}
