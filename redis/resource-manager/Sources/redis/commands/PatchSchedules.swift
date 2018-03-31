// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// PatchSchedules is the REST API for Azure Redis Cache Service.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct PatchSchedules {
    public static func CreateOrUpdate(resourceGroupName: String, name: String, _default: String, subscriptionId: String, parameters: RedisPatchScheduleProtocol) -> PatchSchedulesCreateOrUpdate {
        return CreateOrUpdateCommand(resourceGroupName: resourceGroupName, name: name, _default: _default, subscriptionId: subscriptionId, parameters: parameters)
    }
    public static func Delete(resourceGroupName: String, name: String, _default: String, subscriptionId: String) -> PatchSchedulesDelete {
        return DeleteCommand(resourceGroupName: resourceGroupName, name: name, _default: _default, subscriptionId: subscriptionId)
    }
    public static func Get(resourceGroupName: String, name: String, _default: String, subscriptionId: String) -> PatchSchedulesGet {
        return GetCommand(resourceGroupName: resourceGroupName, name: name, _default: _default, subscriptionId: subscriptionId)
    }
}
}
