// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// SoftwareUpdateConfigurationCollectionItemPropertiesProtocol is software update configuration collection item
// properties.
public protocol SoftwareUpdateConfigurationCollectionItemPropertiesProtocol : Codable {
     var updateConfiguration: CollectionItemUpdateConfigurationProtocol? { get set }
     var frequency: ScheduleFrequencyEnum? { get set }
     var startTime: Date? { get set }
     var creationTime: Date? { get set }
     var lastModifiedTime: Date? { get set }
     var provisioningState: String? { get set }
     var nextRun: Date? { get set }
}
