// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// ConnectionMonitors is the network Client
import Foundation
import azureSwiftRuntime
extension Commands {
public struct ConnectionMonitors {
    public static func CreateOrUpdate(resourceGroupName: String, networkWatcherName: String, connectionMonitorName: String, subscriptionId: String, parameters: ConnectionMonitorProtocol) -> ConnectionMonitorsCreateOrUpdate {
        return CreateOrUpdateCommand(resourceGroupName: resourceGroupName, networkWatcherName: networkWatcherName, connectionMonitorName: connectionMonitorName, subscriptionId: subscriptionId, parameters: parameters)
    }
    public static func Delete(resourceGroupName: String, networkWatcherName: String, connectionMonitorName: String, subscriptionId: String) -> ConnectionMonitorsDelete {
        return DeleteCommand(resourceGroupName: resourceGroupName, networkWatcherName: networkWatcherName, connectionMonitorName: connectionMonitorName, subscriptionId: subscriptionId)
    }
    public static func Get(resourceGroupName: String, networkWatcherName: String, connectionMonitorName: String, subscriptionId: String) -> ConnectionMonitorsGet {
        return GetCommand(resourceGroupName: resourceGroupName, networkWatcherName: networkWatcherName, connectionMonitorName: connectionMonitorName, subscriptionId: subscriptionId)
    }
    public static func List(resourceGroupName: String, networkWatcherName: String, subscriptionId: String) -> ConnectionMonitorsList {
        return ListCommand(resourceGroupName: resourceGroupName, networkWatcherName: networkWatcherName, subscriptionId: subscriptionId)
    }
    public static func Query(resourceGroupName: String, networkWatcherName: String, connectionMonitorName: String, subscriptionId: String) -> ConnectionMonitorsQuery {
        return QueryCommand(resourceGroupName: resourceGroupName, networkWatcherName: networkWatcherName, connectionMonitorName: connectionMonitorName, subscriptionId: subscriptionId)
    }
    public static func Start(resourceGroupName: String, networkWatcherName: String, connectionMonitorName: String, subscriptionId: String) -> ConnectionMonitorsStart {
        return StartCommand(resourceGroupName: resourceGroupName, networkWatcherName: networkWatcherName, connectionMonitorName: connectionMonitorName, subscriptionId: subscriptionId)
    }
    public static func Stop(resourceGroupName: String, networkWatcherName: String, connectionMonitorName: String, subscriptionId: String) -> ConnectionMonitorsStop {
        return StopCommand(resourceGroupName: resourceGroupName, networkWatcherName: networkWatcherName, connectionMonitorName: connectionMonitorName, subscriptionId: subscriptionId)
    }
}
}
