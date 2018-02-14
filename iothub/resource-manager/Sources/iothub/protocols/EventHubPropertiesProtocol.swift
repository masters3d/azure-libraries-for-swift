// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// EventHubPropertiesProtocol is the properties of the provisioned Event Hub-compatible endpoint used by the IoT hub.
public protocol EventHubPropertiesProtocol : Codable {
     var retentionTimeInDays: Int64? { get set }
     var partitionCount: Int32? { get set }
     var partitionIds: [String]? { get set }
     var path: String? { get set }
     var endpoint: String? { get set }
}
