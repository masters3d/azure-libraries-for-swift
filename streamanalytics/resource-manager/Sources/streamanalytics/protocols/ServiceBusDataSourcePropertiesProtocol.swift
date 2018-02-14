// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ServiceBusDataSourcePropertiesProtocol is the common properties that are associated with Service Bus data sources
// (Queues, Topics, Event Hubs, etc.).
public protocol ServiceBusDataSourcePropertiesProtocol : Codable {
     var serviceBusNamespace: String? { get set }
     var sharedAccessPolicyName: String? { get set }
     var sharedAccessPolicyKey: String? { get set }
}
