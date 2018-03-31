// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// Databases is the the Azure SQL Database management API provides a RESTful set of web services that interact with
// Azure SQL Database services to manage your databases. The API enables you to create, retrieve, update, and delete
// databases.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct Databases {
    public static func CreateImportOperation(subscriptionId: String, resourceGroupName: String, serverName: String, databaseName: String, extensionName: String, parameters: ImportExtensionRequestProtocol) -> DatabasesCreateImportOperation {
        return CreateImportOperationCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, serverName: serverName, databaseName: databaseName, extensionName: extensionName, parameters: parameters)
    }
    public static func CreateOrUpdate(subscriptionId: String, resourceGroupName: String, serverName: String, databaseName: String, parameters: DatabaseProtocol) -> DatabasesCreateOrUpdate {
        return CreateOrUpdateCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, serverName: serverName, databaseName: databaseName, parameters: parameters)
    }
    public static func Delete(subscriptionId: String, resourceGroupName: String, serverName: String, databaseName: String) -> DatabasesDelete {
        return DeleteCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, serverName: serverName, databaseName: databaseName)
    }
    public static func Export(subscriptionId: String, resourceGroupName: String, serverName: String, databaseName: String, parameters: ExportRequestProtocol) -> DatabasesExport {
        return ExportCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, serverName: serverName, databaseName: databaseName, parameters: parameters)
    }
    public static func Get(subscriptionId: String, resourceGroupName: String, serverName: String, databaseName: String) -> DatabasesGet {
        return GetCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, serverName: serverName, databaseName: databaseName)
    }
    public static func GetByElasticPool(subscriptionId: String, resourceGroupName: String, serverName: String, elasticPoolName: String, databaseName: String) -> DatabasesGetByElasticPool {
        return GetByElasticPoolCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, serverName: serverName, elasticPoolName: elasticPoolName, databaseName: databaseName)
    }
    public static func GetByRecommendedElasticPool(subscriptionId: String, resourceGroupName: String, serverName: String, recommendedElasticPoolName: String, databaseName: String) -> DatabasesGetByRecommendedElasticPool {
        return GetByRecommendedElasticPoolCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, serverName: serverName, recommendedElasticPoolName: recommendedElasticPoolName, databaseName: databaseName)
    }
    public static func Import(subscriptionId: String, resourceGroupName: String, serverName: String, parameters: ImportRequestProtocol) -> DatabasesImport {
        return ImportCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, serverName: serverName, parameters: parameters)
    }
    public static func ListByElasticPool(subscriptionId: String, resourceGroupName: String, serverName: String, elasticPoolName: String) -> DatabasesListByElasticPool {
        return ListByElasticPoolCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, serverName: serverName, elasticPoolName: elasticPoolName)
    }
    public static func ListByRecommendedElasticPool(subscriptionId: String, resourceGroupName: String, serverName: String, recommendedElasticPoolName: String) -> DatabasesListByRecommendedElasticPool {
        return ListByRecommendedElasticPoolCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, serverName: serverName, recommendedElasticPoolName: recommendedElasticPoolName)
    }
    public static func ListByServer(subscriptionId: String, resourceGroupName: String, serverName: String) -> DatabasesListByServer {
        return ListByServerCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, serverName: serverName)
    }
    public static func ListMetricDefinitions(subscriptionId: String, resourceGroupName: String, serverName: String, databaseName: String) -> DatabasesListMetricDefinitions {
        return ListMetricDefinitionsCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, serverName: serverName, databaseName: databaseName)
    }
    public static func ListMetrics(subscriptionId: String, resourceGroupName: String, serverName: String, databaseName: String, filter: String) -> DatabasesListMetrics {
        return ListMetricsCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, serverName: serverName, databaseName: databaseName, filter: filter)
    }
    public static func Pause(subscriptionId: String, resourceGroupName: String, serverName: String, databaseName: String) -> DatabasesPause {
        return PauseCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, serverName: serverName, databaseName: databaseName)
    }
    public static func Rename(resourceGroupName: String, serverName: String, databaseName: String, subscriptionId: String, parameters: ResourceMoveDefinitionProtocol) -> DatabasesRename {
        return RenameCommand(resourceGroupName: resourceGroupName, serverName: serverName, databaseName: databaseName, subscriptionId: subscriptionId, parameters: parameters)
    }
    public static func Resume(subscriptionId: String, resourceGroupName: String, serverName: String, databaseName: String) -> DatabasesResume {
        return ResumeCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, serverName: serverName, databaseName: databaseName)
    }
    public static func Update(subscriptionId: String, resourceGroupName: String, serverName: String, databaseName: String, parameters: DatabaseUpdateProtocol) -> DatabasesUpdate {
        return UpdateCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, serverName: serverName, databaseName: databaseName, parameters: parameters)
    }
}
}
