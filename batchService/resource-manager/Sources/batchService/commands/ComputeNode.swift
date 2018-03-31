// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// ComputeNode is the a client for issuing REST requests to the Azure Batch service.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct ComputeNode {
    public static func AddUser(poolId: String, nodeId: String, user: ComputeNodeUserProtocol) -> ComputeNodeAddUser {
        return AddUserCommand(poolId: poolId, nodeId: nodeId, user: user)
    }
    public static func DeleteUser(poolId: String, nodeId: String, userName: String) -> ComputeNodeDeleteUser {
        return DeleteUserCommand(poolId: poolId, nodeId: nodeId, userName: userName)
    }
    public static func DisableScheduling(poolId: String, nodeId: String) -> ComputeNodeDisableScheduling {
        return DisableSchedulingCommand(poolId: poolId, nodeId: nodeId)
    }
    public static func EnableScheduling(poolId: String, nodeId: String) -> ComputeNodeEnableScheduling {
        return EnableSchedulingCommand(poolId: poolId, nodeId: nodeId)
    }
    public static func Get(poolId: String, nodeId: String) -> ComputeNodeGet {
        return GetCommand(poolId: poolId, nodeId: nodeId)
    }
    public static func GetRemoteDesktop(poolId: String, nodeId: String) -> ComputeNodeGetRemoteDesktop {
        return GetRemoteDesktopCommand(poolId: poolId, nodeId: nodeId)
    }
    public static func GetRemoteLoginSettings(poolId: String, nodeId: String) -> ComputeNodeGetRemoteLoginSettings {
        return GetRemoteLoginSettingsCommand(poolId: poolId, nodeId: nodeId)
    }
    public static func List(poolId: String) -> ComputeNodeList {
        return ListCommand(poolId: poolId)
    }
    public static func Reboot(poolId: String, nodeId: String) -> ComputeNodeReboot {
        return RebootCommand(poolId: poolId, nodeId: nodeId)
    }
    public static func Reimage(poolId: String, nodeId: String) -> ComputeNodeReimage {
        return ReimageCommand(poolId: poolId, nodeId: nodeId)
    }
    public static func UpdateUser(poolId: String, nodeId: String, userName: String, nodeUpdateUserParameter: NodeUpdateUserParameterProtocol) -> ComputeNodeUpdateUser {
        return UpdateUserCommand(poolId: poolId, nodeId: nodeId, userName: userName, nodeUpdateUserParameter: nodeUpdateUserParameter)
    }
}
}
