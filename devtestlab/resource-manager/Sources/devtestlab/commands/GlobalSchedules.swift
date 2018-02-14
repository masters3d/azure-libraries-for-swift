// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// GlobalSchedules is the the DevTest Labs Client.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct GlobalSchedules {
    public static func CreateOrUpdate(subscriptionId: String, resourceGroupName: String, name: String, schedule: ScheduleProtocol) -> GlobalSchedulesCreateOrUpdate {
        return CreateOrUpdateCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, name: name, schedule: schedule)
    }
    public static func Delete(subscriptionId: String, resourceGroupName: String, name: String) -> GlobalSchedulesDelete {
        return DeleteCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, name: name)
    }
    public static func Execute(subscriptionId: String, resourceGroupName: String, name: String) -> GlobalSchedulesExecute {
        return ExecuteCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, name: name)
    }
    public static func Get(subscriptionId: String, resourceGroupName: String, name: String) -> GlobalSchedulesGet {
        return GetCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, name: name)
    }
    public static func ListByResourceGroup(subscriptionId: String, resourceGroupName: String) -> GlobalSchedulesListByResourceGroup {
        return ListByResourceGroupCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName)
    }
    public static func ListBySubscription(subscriptionId: String) -> GlobalSchedulesListBySubscription {
        return ListBySubscriptionCommand(subscriptionId: subscriptionId)
    }
    public static func Retarget(subscriptionId: String, resourceGroupName: String, name: String, retargetScheduleProperties: RetargetSchedulePropertiesProtocol) -> GlobalSchedulesRetarget {
        return RetargetCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, name: name, retargetScheduleProperties: retargetScheduleProperties)
    }
    public static func Update(subscriptionId: String, resourceGroupName: String, name: String, schedule: ScheduleFragmentProtocol) -> GlobalSchedulesUpdate {
        return UpdateCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, name: name, schedule: schedule)
    }
}
}
