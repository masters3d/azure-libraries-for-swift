// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// AppServiceEnvironments is the webSite Management Client
import Foundation
import azureSwiftRuntime
extension Commands {
public struct AppServiceEnvironments {
    public static func CreateOrUpdate(resourceGroupName: String, name: String, subscriptionId: String, hostingEnvironmentEnvelope: AppServiceEnvironmentResourceProtocol) -> AppServiceEnvironmentsCreateOrUpdate {
        return CreateOrUpdateCommand(resourceGroupName: resourceGroupName, name: name, subscriptionId: subscriptionId, hostingEnvironmentEnvelope: hostingEnvironmentEnvelope)
    }
    public static func CreateOrUpdateMultiRolePool(resourceGroupName: String, name: String, subscriptionId: String, multiRolePoolEnvelope: WorkerPoolResourceProtocol) -> AppServiceEnvironmentsCreateOrUpdateMultiRolePool {
        return CreateOrUpdateMultiRolePoolCommand(resourceGroupName: resourceGroupName, name: name, subscriptionId: subscriptionId, multiRolePoolEnvelope: multiRolePoolEnvelope)
    }
    public static func CreateOrUpdateWorkerPool(resourceGroupName: String, name: String, workerPoolName: String, subscriptionId: String, workerPoolEnvelope: WorkerPoolResourceProtocol) -> AppServiceEnvironmentsCreateOrUpdateWorkerPool {
        return CreateOrUpdateWorkerPoolCommand(resourceGroupName: resourceGroupName, name: name, workerPoolName: workerPoolName, subscriptionId: subscriptionId, workerPoolEnvelope: workerPoolEnvelope)
    }
    public static func Delete(resourceGroupName: String, name: String, subscriptionId: String) -> AppServiceEnvironmentsDelete {
        return DeleteCommand(resourceGroupName: resourceGroupName, name: name, subscriptionId: subscriptionId)
    }
    public static func Get(resourceGroupName: String, name: String, subscriptionId: String) -> AppServiceEnvironmentsGet {
        return GetCommand(resourceGroupName: resourceGroupName, name: name, subscriptionId: subscriptionId)
    }
    public static func GetDiagnosticsItem(resourceGroupName: String, name: String, diagnosticsName: String, subscriptionId: String) -> AppServiceEnvironmentsGetDiagnosticsItem {
        return GetDiagnosticsItemCommand(resourceGroupName: resourceGroupName, name: name, diagnosticsName: diagnosticsName, subscriptionId: subscriptionId)
    }
    public static func GetMultiRolePool(resourceGroupName: String, name: String, subscriptionId: String) -> AppServiceEnvironmentsGetMultiRolePool {
        return GetMultiRolePoolCommand(resourceGroupName: resourceGroupName, name: name, subscriptionId: subscriptionId)
    }
    public static func GetWorkerPool(resourceGroupName: String, name: String, workerPoolName: String, subscriptionId: String) -> AppServiceEnvironmentsGetWorkerPool {
        return GetWorkerPoolCommand(resourceGroupName: resourceGroupName, name: name, workerPoolName: workerPoolName, subscriptionId: subscriptionId)
    }
    public static func List(subscriptionId: String) -> AppServiceEnvironmentsList {
        return ListCommand(subscriptionId: subscriptionId)
    }
    public static func ListAppServicePlans(resourceGroupName: String, name: String, subscriptionId: String) -> AppServiceEnvironmentsListAppServicePlans {
        return ListAppServicePlansCommand(resourceGroupName: resourceGroupName, name: name, subscriptionId: subscriptionId)
    }
    public static func ListByResourceGroup(resourceGroupName: String, subscriptionId: String) -> AppServiceEnvironmentsListByResourceGroup {
        return ListByResourceGroupCommand(resourceGroupName: resourceGroupName, subscriptionId: subscriptionId)
    }
    public static func ListCapacities(resourceGroupName: String, name: String, subscriptionId: String) -> AppServiceEnvironmentsListCapacities {
        return ListCapacitiesCommand(resourceGroupName: resourceGroupName, name: name, subscriptionId: subscriptionId)
    }
    public static func ListDiagnostics(resourceGroupName: String, name: String, subscriptionId: String) -> AppServiceEnvironmentsListDiagnostics {
        return ListDiagnosticsCommand(resourceGroupName: resourceGroupName, name: name, subscriptionId: subscriptionId)
    }
    public static func ListMetricDefinitions(resourceGroupName: String, name: String, subscriptionId: String) -> AppServiceEnvironmentsListMetricDefinitions {
        return ListMetricDefinitionsCommand(resourceGroupName: resourceGroupName, name: name, subscriptionId: subscriptionId)
    }
    public static func ListMetrics(resourceGroupName: String, name: String, subscriptionId: String) -> AppServiceEnvironmentsListMetrics {
        return ListMetricsCommand(resourceGroupName: resourceGroupName, name: name, subscriptionId: subscriptionId)
    }
    public static func ListMultiRoleMetricDefinitions(resourceGroupName: String, name: String, subscriptionId: String) -> AppServiceEnvironmentsListMultiRoleMetricDefinitions {
        return ListMultiRoleMetricDefinitionsCommand(resourceGroupName: resourceGroupName, name: name, subscriptionId: subscriptionId)
    }
    public static func ListMultiRoleMetrics(resourceGroupName: String, name: String, subscriptionId: String) -> AppServiceEnvironmentsListMultiRoleMetrics {
        return ListMultiRoleMetricsCommand(resourceGroupName: resourceGroupName, name: name, subscriptionId: subscriptionId)
    }
    public static func ListMultiRolePoolInstanceMetricDefinitions(resourceGroupName: String, name: String, instance: String, subscriptionId: String) -> AppServiceEnvironmentsListMultiRolePoolInstanceMetricDefinitions {
        return ListMultiRolePoolInstanceMetricDefinitionsCommand(resourceGroupName: resourceGroupName, name: name, instance: instance, subscriptionId: subscriptionId)
    }
    public static func ListMultiRolePoolInstanceMetrics(resourceGroupName: String, name: String, instance: String, subscriptionId: String) -> AppServiceEnvironmentsListMultiRolePoolInstanceMetrics {
        return ListMultiRolePoolInstanceMetricsCommand(resourceGroupName: resourceGroupName, name: name, instance: instance, subscriptionId: subscriptionId)
    }
    public static func ListMultiRolePools(resourceGroupName: String, name: String, subscriptionId: String) -> AppServiceEnvironmentsListMultiRolePools {
        return ListMultiRolePoolsCommand(resourceGroupName: resourceGroupName, name: name, subscriptionId: subscriptionId)
    }
    public static func ListMultiRolePoolSkus(resourceGroupName: String, name: String, subscriptionId: String) -> AppServiceEnvironmentsListMultiRolePoolSkus {
        return ListMultiRolePoolSkusCommand(resourceGroupName: resourceGroupName, name: name, subscriptionId: subscriptionId)
    }
    public static func ListMultiRoleUsages(resourceGroupName: String, name: String, subscriptionId: String) -> AppServiceEnvironmentsListMultiRoleUsages {
        return ListMultiRoleUsagesCommand(resourceGroupName: resourceGroupName, name: name, subscriptionId: subscriptionId)
    }
    public static func ListOperations(resourceGroupName: String, name: String, subscriptionId: String) -> AppServiceEnvironmentsListOperations {
        return ListOperationsCommand(resourceGroupName: resourceGroupName, name: name, subscriptionId: subscriptionId)
    }
    public static func ListUsages(resourceGroupName: String, name: String, subscriptionId: String) -> AppServiceEnvironmentsListUsages {
        return ListUsagesCommand(resourceGroupName: resourceGroupName, name: name, subscriptionId: subscriptionId)
    }
    public static func ListVips(resourceGroupName: String, name: String, subscriptionId: String) -> AppServiceEnvironmentsListVips {
        return ListVipsCommand(resourceGroupName: resourceGroupName, name: name, subscriptionId: subscriptionId)
    }
    public static func ListWebApps(resourceGroupName: String, name: String, subscriptionId: String) -> AppServiceEnvironmentsListWebApps {
        return ListWebAppsCommand(resourceGroupName: resourceGroupName, name: name, subscriptionId: subscriptionId)
    }
    public static func ListWebWorkerMetricDefinitions(resourceGroupName: String, name: String, workerPoolName: String, subscriptionId: String) -> AppServiceEnvironmentsListWebWorkerMetricDefinitions {
        return ListWebWorkerMetricDefinitionsCommand(resourceGroupName: resourceGroupName, name: name, workerPoolName: workerPoolName, subscriptionId: subscriptionId)
    }
    public static func ListWebWorkerMetrics(resourceGroupName: String, name: String, workerPoolName: String, subscriptionId: String) -> AppServiceEnvironmentsListWebWorkerMetrics {
        return ListWebWorkerMetricsCommand(resourceGroupName: resourceGroupName, name: name, workerPoolName: workerPoolName, subscriptionId: subscriptionId)
    }
    public static func ListWebWorkerUsages(resourceGroupName: String, name: String, workerPoolName: String, subscriptionId: String) -> AppServiceEnvironmentsListWebWorkerUsages {
        return ListWebWorkerUsagesCommand(resourceGroupName: resourceGroupName, name: name, workerPoolName: workerPoolName, subscriptionId: subscriptionId)
    }
    public static func ListWorkerPoolInstanceMetricDefinitions(resourceGroupName: String, name: String, workerPoolName: String, instance: String, subscriptionId: String) -> AppServiceEnvironmentsListWorkerPoolInstanceMetricDefinitions {
        return ListWorkerPoolInstanceMetricDefinitionsCommand(resourceGroupName: resourceGroupName, name: name, workerPoolName: workerPoolName, instance: instance, subscriptionId: subscriptionId)
    }
    public static func ListWorkerPoolInstanceMetrics(resourceGroupName: String, name: String, workerPoolName: String, instance: String, subscriptionId: String) -> AppServiceEnvironmentsListWorkerPoolInstanceMetrics {
        return ListWorkerPoolInstanceMetricsCommand(resourceGroupName: resourceGroupName, name: name, workerPoolName: workerPoolName, instance: instance, subscriptionId: subscriptionId)
    }
    public static func ListWorkerPools(resourceGroupName: String, name: String, subscriptionId: String) -> AppServiceEnvironmentsListWorkerPools {
        return ListWorkerPoolsCommand(resourceGroupName: resourceGroupName, name: name, subscriptionId: subscriptionId)
    }
    public static func ListWorkerPoolSkus(resourceGroupName: String, name: String, workerPoolName: String, subscriptionId: String) -> AppServiceEnvironmentsListWorkerPoolSkus {
        return ListWorkerPoolSkusCommand(resourceGroupName: resourceGroupName, name: name, workerPoolName: workerPoolName, subscriptionId: subscriptionId)
    }
    public static func Reboot(resourceGroupName: String, name: String, subscriptionId: String) -> AppServiceEnvironmentsReboot {
        return RebootCommand(resourceGroupName: resourceGroupName, name: name, subscriptionId: subscriptionId)
    }
    public static func Resume(resourceGroupName: String, name: String, subscriptionId: String) -> AppServiceEnvironmentsResume {
        return ResumeCommand(resourceGroupName: resourceGroupName, name: name, subscriptionId: subscriptionId)
    }
    public static func Suspend(resourceGroupName: String, name: String, subscriptionId: String) -> AppServiceEnvironmentsSuspend {
        return SuspendCommand(resourceGroupName: resourceGroupName, name: name, subscriptionId: subscriptionId)
    }
    public static func Update(resourceGroupName: String, name: String, subscriptionId: String, hostingEnvironmentEnvelope: AppServiceEnvironmentPatchResourceProtocol) -> AppServiceEnvironmentsUpdate {
        return UpdateCommand(resourceGroupName: resourceGroupName, name: name, subscriptionId: subscriptionId, hostingEnvironmentEnvelope: hostingEnvironmentEnvelope)
    }
    public static func UpdateMultiRolePool(resourceGroupName: String, name: String, subscriptionId: String, multiRolePoolEnvelope: WorkerPoolResourceProtocol) -> AppServiceEnvironmentsUpdateMultiRolePool {
        return UpdateMultiRolePoolCommand(resourceGroupName: resourceGroupName, name: name, subscriptionId: subscriptionId, multiRolePoolEnvelope: multiRolePoolEnvelope)
    }
    public static func UpdateWorkerPool(resourceGroupName: String, name: String, workerPoolName: String, subscriptionId: String, workerPoolEnvelope: WorkerPoolResourceProtocol) -> AppServiceEnvironmentsUpdateWorkerPool {
        return UpdateWorkerPoolCommand(resourceGroupName: resourceGroupName, name: name, workerPoolName: workerPoolName, subscriptionId: subscriptionId, workerPoolEnvelope: workerPoolEnvelope)
    }
}
}
