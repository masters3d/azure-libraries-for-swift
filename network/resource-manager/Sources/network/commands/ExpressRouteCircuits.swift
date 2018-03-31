// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// ExpressRouteCircuits is the network Client
import Foundation
import azureSwiftRuntime
extension Commands {
public struct ExpressRouteCircuits {
    public static func CreateOrUpdate(resourceGroupName: String, circuitName: String, subscriptionId: String, parameters: ExpressRouteCircuitProtocol) -> ExpressRouteCircuitsCreateOrUpdate {
        return CreateOrUpdateCommand(resourceGroupName: resourceGroupName, circuitName: circuitName, subscriptionId: subscriptionId, parameters: parameters)
    }
    public static func Delete(resourceGroupName: String, circuitName: String, subscriptionId: String) -> ExpressRouteCircuitsDelete {
        return DeleteCommand(resourceGroupName: resourceGroupName, circuitName: circuitName, subscriptionId: subscriptionId)
    }
    public static func Get(resourceGroupName: String, circuitName: String, subscriptionId: String) -> ExpressRouteCircuitsGet {
        return GetCommand(resourceGroupName: resourceGroupName, circuitName: circuitName, subscriptionId: subscriptionId)
    }
    public static func GetPeeringStats(resourceGroupName: String, circuitName: String, peeringName: String, subscriptionId: String) -> ExpressRouteCircuitsGetPeeringStats {
        return GetPeeringStatsCommand(resourceGroupName: resourceGroupName, circuitName: circuitName, peeringName: peeringName, subscriptionId: subscriptionId)
    }
    public static func GetStats(resourceGroupName: String, circuitName: String, subscriptionId: String) -> ExpressRouteCircuitsGetStats {
        return GetStatsCommand(resourceGroupName: resourceGroupName, circuitName: circuitName, subscriptionId: subscriptionId)
    }
    public static func List(resourceGroupName: String, subscriptionId: String) -> ExpressRouteCircuitsList {
        return ListCommand(resourceGroupName: resourceGroupName, subscriptionId: subscriptionId)
    }
    public static func ListAll(subscriptionId: String) -> ExpressRouteCircuitsListAll {
        return ListAllCommand(subscriptionId: subscriptionId)
    }
    public static func ListArpTable(resourceGroupName: String, circuitName: String, peeringName: String, devicePath: String, subscriptionId: String) -> ExpressRouteCircuitsListArpTable {
        return ListArpTableCommand(resourceGroupName: resourceGroupName, circuitName: circuitName, peeringName: peeringName, devicePath: devicePath, subscriptionId: subscriptionId)
    }
    public static func ListRoutesTable(resourceGroupName: String, circuitName: String, peeringName: String, devicePath: String, subscriptionId: String) -> ExpressRouteCircuitsListRoutesTable {
        return ListRoutesTableCommand(resourceGroupName: resourceGroupName, circuitName: circuitName, peeringName: peeringName, devicePath: devicePath, subscriptionId: subscriptionId)
    }
    public static func ListRoutesTableSummary(resourceGroupName: String, circuitName: String, peeringName: String, devicePath: String, subscriptionId: String) -> ExpressRouteCircuitsListRoutesTableSummary {
        return ListRoutesTableSummaryCommand(resourceGroupName: resourceGroupName, circuitName: circuitName, peeringName: peeringName, devicePath: devicePath, subscriptionId: subscriptionId)
    }
    public static func UpdateTags(resourceGroupName: String, circuitName: String, subscriptionId: String, parameters: TagsObjectProtocol) -> ExpressRouteCircuitsUpdateTags {
        return UpdateTagsCommand(resourceGroupName: resourceGroupName, circuitName: circuitName, subscriptionId: subscriptionId, parameters: parameters)
    }
}
}
