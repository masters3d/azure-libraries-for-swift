// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// Objects is the the Graph RBAC Management Client
import Foundation
import azureSwiftRuntime
extension Commands {
public struct Objects {
    public static func GetCurrentUser(tenantID: String) -> ObjectsGetCurrentUser {
        return GetCurrentUserCommand(tenantID: tenantID)
    }
    public static func GetObjectsByObjectIds(tenantID: String, parameters: GetObjectsParametersProtocol) -> ObjectsGetObjectsByObjectIds {
        return GetObjectsByObjectIdsCommand(tenantID: tenantID, parameters: parameters)
    }
    public static func GetObjectsByObjectIdsNext(_nextLink: String, tenantID: String) -> ObjectsGetObjectsByObjectIdsNext {
        return GetObjectsByObjectIdsNextCommand(_nextLink: _nextLink, tenantID: tenantID)
    }
}
}
