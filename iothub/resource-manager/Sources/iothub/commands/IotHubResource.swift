// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// IotHubResource is the use this API to manage the IoT hubs in your Azure subscription.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct IotHubResource {
    public static func CheckNameAvailability(subscriptionId: String, operationInputs: OperationInputsProtocol) -> IotHubResourceCheckNameAvailability {
        return CheckNameAvailabilityCommand(subscriptionId: subscriptionId, operationInputs: operationInputs)
    }
    public static func CreateEventHubConsumerGroup(subscriptionId: String, resourceGroupName: String, resourceName: String, eventHubEndpointName: String, name: String) -> IotHubResourceCreateEventHubConsumerGroup {
        return CreateEventHubConsumerGroupCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, resourceName: resourceName, eventHubEndpointName: eventHubEndpointName, name: name)
    }
    public static func CreateOrUpdate(subscriptionId: String, resourceGroupName: String, resourceName: String, iotHubDescription: IotHubDescriptionProtocol) -> IotHubResourceCreateOrUpdate {
        return CreateOrUpdateCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, resourceName: resourceName, iotHubDescription: iotHubDescription)
    }
    public static func Delete(subscriptionId: String, resourceGroupName: String, resourceName: String) -> IotHubResourceDelete {
        return DeleteCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, resourceName: resourceName)
    }
    public static func DeleteEventHubConsumerGroup(subscriptionId: String, resourceGroupName: String, resourceName: String, eventHubEndpointName: String, name: String) -> IotHubResourceDeleteEventHubConsumerGroup {
        return DeleteEventHubConsumerGroupCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, resourceName: resourceName, eventHubEndpointName: eventHubEndpointName, name: name)
    }
    public static func ExportDevices(subscriptionId: String, resourceGroupName: String, resourceName: String, exportDevicesParameters: ExportDevicesRequestProtocol) -> IotHubResourceExportDevices {
        return ExportDevicesCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, resourceName: resourceName, exportDevicesParameters: exportDevicesParameters)
    }
    public static func Get(subscriptionId: String, resourceGroupName: String, resourceName: String) -> IotHubResourceGet {
        return GetCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, resourceName: resourceName)
    }
    public static func GetEventHubConsumerGroup(subscriptionId: String, resourceGroupName: String, resourceName: String, eventHubEndpointName: String, name: String) -> IotHubResourceGetEventHubConsumerGroup {
        return GetEventHubConsumerGroupCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, resourceName: resourceName, eventHubEndpointName: eventHubEndpointName, name: name)
    }
    public static func GetJob(subscriptionId: String, resourceGroupName: String, resourceName: String, jobId: String) -> IotHubResourceGetJob {
        return GetJobCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, resourceName: resourceName, jobId: jobId)
    }
    public static func GetKeysForKeyName(subscriptionId: String, resourceGroupName: String, resourceName: String, keyName: String) -> IotHubResourceGetKeysForKeyName {
        return GetKeysForKeyNameCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, resourceName: resourceName, keyName: keyName)
    }
    public static func GetQuotaMetrics(subscriptionId: String, resourceGroupName: String, resourceName: String) -> IotHubResourceGetQuotaMetrics {
        return GetQuotaMetricsCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, resourceName: resourceName)
    }
    public static func GetStats(subscriptionId: String, resourceGroupName: String, resourceName: String) -> IotHubResourceGetStats {
        return GetStatsCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, resourceName: resourceName)
    }
    public static func GetValidSkus(subscriptionId: String, resourceGroupName: String, resourceName: String) -> IotHubResourceGetValidSkus {
        return GetValidSkusCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, resourceName: resourceName)
    }
    public static func ImportDevices(subscriptionId: String, resourceGroupName: String, resourceName: String, importDevicesParameters: ImportDevicesRequestProtocol) -> IotHubResourceImportDevices {
        return ImportDevicesCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, resourceName: resourceName, importDevicesParameters: importDevicesParameters)
    }
    public static func ListByResourceGroup(subscriptionId: String, resourceGroupName: String) -> IotHubResourceListByResourceGroup {
        return ListByResourceGroupCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName)
    }
    public static func ListBySubscription(subscriptionId: String) -> IotHubResourceListBySubscription {
        return ListBySubscriptionCommand(subscriptionId: subscriptionId)
    }
    public static func ListEventHubConsumerGroups(subscriptionId: String, resourceGroupName: String, resourceName: String, eventHubEndpointName: String) -> IotHubResourceListEventHubConsumerGroups {
        return ListEventHubConsumerGroupsCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, resourceName: resourceName, eventHubEndpointName: eventHubEndpointName)
    }
    public static func ListJobs(subscriptionId: String, resourceGroupName: String, resourceName: String) -> IotHubResourceListJobs {
        return ListJobsCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, resourceName: resourceName)
    }
    public static func ListKeys(subscriptionId: String, resourceGroupName: String, resourceName: String) -> IotHubResourceListKeys {
        return ListKeysCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, resourceName: resourceName)
    }
}
}
