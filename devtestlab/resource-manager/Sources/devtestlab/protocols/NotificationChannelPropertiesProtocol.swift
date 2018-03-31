// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// NotificationChannelPropertiesProtocol is properties of a schedule.
public protocol NotificationChannelPropertiesProtocol : Codable {
     var webHookUrl: String? { get set }
     var description: String? { get set }
     var events: [EventProtocol?]? { get set }
     var createdDate: Date? { get set }
     var provisioningState: String? { get set }
     var uniqueIdentifier: String? { get set }
}
