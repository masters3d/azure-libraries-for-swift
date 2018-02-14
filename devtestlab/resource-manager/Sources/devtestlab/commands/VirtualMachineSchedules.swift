// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// VirtualMachineSchedules is the the DevTest Labs Client.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct VirtualMachineSchedules {
    public static func CreateOrUpdate(subscriptionId: String, resourceGroupName: String, labName: String, virtualMachineName: String, name: String, schedule: ScheduleProtocol) -> VirtualMachineSchedulesCreateOrUpdate {
        return CreateOrUpdateCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, labName: labName, virtualMachineName: virtualMachineName, name: name, schedule: schedule)
    }
    public static func Delete(subscriptionId: String, resourceGroupName: String, labName: String, virtualMachineName: String, name: String) -> VirtualMachineSchedulesDelete {
        return DeleteCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, labName: labName, virtualMachineName: virtualMachineName, name: name)
    }
    public static func Execute(subscriptionId: String, resourceGroupName: String, labName: String, virtualMachineName: String, name: String) -> VirtualMachineSchedulesExecute {
        return ExecuteCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, labName: labName, virtualMachineName: virtualMachineName, name: name)
    }
    public static func Get(subscriptionId: String, resourceGroupName: String, labName: String, virtualMachineName: String, name: String) -> VirtualMachineSchedulesGet {
        return GetCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, labName: labName, virtualMachineName: virtualMachineName, name: name)
    }
    public static func List(subscriptionId: String, resourceGroupName: String, labName: String, virtualMachineName: String) -> VirtualMachineSchedulesList {
        return ListCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, labName: labName, virtualMachineName: virtualMachineName)
    }
    public static func Update(subscriptionId: String, resourceGroupName: String, labName: String, virtualMachineName: String, name: String, schedule: ScheduleFragmentProtocol) -> VirtualMachineSchedulesUpdate {
        return UpdateCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, labName: labName, virtualMachineName: virtualMachineName, name: name, schedule: schedule)
    }
}
}
