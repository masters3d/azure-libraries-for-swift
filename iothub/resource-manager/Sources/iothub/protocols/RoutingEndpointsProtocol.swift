// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// RoutingEndpointsProtocol is the properties related to the custom endpoints to which your IoT hub routes messages
// based on the routing rules. A maximum of 10 custom endpoints are allowed across all endpoint types for paid hubs and
// only 1 custom endpoint is allowed across all endpoint types for free hubs.
public protocol RoutingEndpointsProtocol : Codable {
     var serviceBusQueues: [RoutingServiceBusQueueEndpointPropertiesProtocol?]? { get set }
     var serviceBusTopics: [RoutingServiceBusTopicEndpointPropertiesProtocol?]? { get set }
     var eventHubs: [RoutingEventHubPropertiesProtocol?]? { get set }
     var storageContainers: [RoutingStorageContainerPropertiesProtocol?]? { get set }
}