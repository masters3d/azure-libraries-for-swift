// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// MessagingEndpointPropertiesProtocol is the properties of the messaging endpoints used by this IoT hub.
public protocol MessagingEndpointPropertiesProtocol : Codable {
     var lockDurationAsIso8601: String? { get set }
     var ttlAsIso8601: String? { get set }
     var maxDeliveryCount: Int32? { get set }
}
