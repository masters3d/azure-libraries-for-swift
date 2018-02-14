// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// Redis is the REST API for Azure Redis Cache Service.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct Redis {
    public static func Create(resourceGroupName: String, name: String, subscriptionId: String, parameters: RedisCreateParametersProtocol) -> RedisCreate {
        return CreateCommand(resourceGroupName: resourceGroupName, name: name, subscriptionId: subscriptionId, parameters: parameters)
    }
    public static func Delete(resourceGroupName: String, name: String, subscriptionId: String) -> RedisDelete {
        return DeleteCommand(resourceGroupName: resourceGroupName, name: name, subscriptionId: subscriptionId)
    }
    public static func ExportData(resourceGroupName: String, name: String, subscriptionId: String, parameters: ExportRDBParametersProtocol) -> RedisExportData {
        return ExportDataCommand(resourceGroupName: resourceGroupName, name: name, subscriptionId: subscriptionId, parameters: parameters)
    }
    public static func ForceReboot(resourceGroupName: String, name: String, subscriptionId: String, parameters: RedisRebootParametersProtocol) -> RedisForceReboot {
        return ForceRebootCommand(resourceGroupName: resourceGroupName, name: name, subscriptionId: subscriptionId, parameters: parameters)
    }
    public static func Get(resourceGroupName: String, name: String, subscriptionId: String) -> RedisGet {
        return GetCommand(resourceGroupName: resourceGroupName, name: name, subscriptionId: subscriptionId)
    }
    public static func ImportData(resourceGroupName: String, name: String, subscriptionId: String, parameters: ImportRDBParametersProtocol) -> RedisImportData {
        return ImportDataCommand(resourceGroupName: resourceGroupName, name: name, subscriptionId: subscriptionId, parameters: parameters)
    }
    public static func List(subscriptionId: String) -> RedisList {
        return ListCommand(subscriptionId: subscriptionId)
    }
    public static func ListByResourceGroup(resourceGroupName: String, subscriptionId: String) -> RedisListByResourceGroup {
        return ListByResourceGroupCommand(resourceGroupName: resourceGroupName, subscriptionId: subscriptionId)
    }
    public static func ListKeys(resourceGroupName: String, name: String, subscriptionId: String) -> RedisListKeys {
        return ListKeysCommand(resourceGroupName: resourceGroupName, name: name, subscriptionId: subscriptionId)
    }
    public static func RegenerateKey(resourceGroupName: String, name: String, subscriptionId: String, parameters: RedisRegenerateKeyParametersProtocol) -> RedisRegenerateKey {
        return RegenerateKeyCommand(resourceGroupName: resourceGroupName, name: name, subscriptionId: subscriptionId, parameters: parameters)
    }
    public static func Update(resourceGroupName: String, name: String, subscriptionId: String, parameters: RedisUpdateParametersProtocol) -> RedisUpdate {
        return UpdateCommand(resourceGroupName: resourceGroupName, name: name, subscriptionId: subscriptionId, parameters: parameters)
    }
}
}
