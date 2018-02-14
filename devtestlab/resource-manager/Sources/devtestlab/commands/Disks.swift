// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// Disks is the the DevTest Labs Client.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct Disks {
    public static func Attach(subscriptionId: String, resourceGroupName: String, labName: String, userName: String, name: String, attachDiskProperties: AttachDiskPropertiesProtocol) -> DisksAttach {
        return AttachCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, labName: labName, userName: userName, name: name, attachDiskProperties: attachDiskProperties)
    }
    public static func CreateOrUpdate(subscriptionId: String, resourceGroupName: String, labName: String, userName: String, name: String, disk: DiskProtocol) -> DisksCreateOrUpdate {
        return CreateOrUpdateCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, labName: labName, userName: userName, name: name, disk: disk)
    }
    public static func Delete(subscriptionId: String, resourceGroupName: String, labName: String, userName: String, name: String) -> DisksDelete {
        return DeleteCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, labName: labName, userName: userName, name: name)
    }
    public static func Detach(subscriptionId: String, resourceGroupName: String, labName: String, userName: String, name: String, detachDiskProperties: DetachDiskPropertiesProtocol) -> DisksDetach {
        return DetachCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, labName: labName, userName: userName, name: name, detachDiskProperties: detachDiskProperties)
    }
    public static func Get(subscriptionId: String, resourceGroupName: String, labName: String, userName: String, name: String) -> DisksGet {
        return GetCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, labName: labName, userName: userName, name: name)
    }
    public static func List(subscriptionId: String, resourceGroupName: String, labName: String, userName: String) -> DisksList {
        return ListCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, labName: labName, userName: userName)
    }
}
}
