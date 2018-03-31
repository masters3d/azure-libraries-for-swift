// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// NotificationChannels is the the DevTest Labs Client.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct NotificationChannels {
    public static func CreateOrUpdate(subscriptionId: String, resourceGroupName: String, labName: String, name: String, notificationChannel: NotificationChannelProtocol) -> NotificationChannelsCreateOrUpdate {
        return CreateOrUpdateCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, labName: labName, name: name, notificationChannel: notificationChannel)
    }
    public static func Delete(subscriptionId: String, resourceGroupName: String, labName: String, name: String) -> NotificationChannelsDelete {
        return DeleteCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, labName: labName, name: name)
    }
    public static func Get(subscriptionId: String, resourceGroupName: String, labName: String, name: String) -> NotificationChannelsGet {
        return GetCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, labName: labName, name: name)
    }
    public static func List(subscriptionId: String, resourceGroupName: String, labName: String) -> NotificationChannelsList {
        return ListCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, labName: labName)
    }
    public static func Notify(subscriptionId: String, resourceGroupName: String, labName: String, name: String, notifyParameters: NotifyParametersProtocol) -> NotificationChannelsNotify {
        return NotifyCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, labName: labName, name: name, notifyParameters: notifyParameters)
    }
    public static func Update(subscriptionId: String, resourceGroupName: String, labName: String, name: String, notificationChannel: NotificationChannelFragmentProtocol) -> NotificationChannelsUpdate {
        return UpdateCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, labName: labName, name: name, notificationChannel: notificationChannel)
    }
}
}
