// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// UpdateConfigurationMachineRunPropertiesProtocol is software update configuration machine run properties.
public protocol UpdateConfigurationMachineRunPropertiesProtocol : Codable {
     var targetComputer: String? { get set }
     var targetComputerType: String? { get set }
     var softwareUpdateConfiguration: UpdateConfigurationNavigationProtocol? { get set }
     var status: String? { get set }
     var osType: String? { get set }
     var correlationId: String? { get set }
     var sourceComputerId: String? { get set }
     var startTime: Date? { get set }
     var endTime: Date? { get set }
     var configuredDuration: String? { get set }
     var job: JobNavigationProtocol? { get set }
     var creationTime: Date? { get set }
     var createdBy: String? { get set }
     var lastModifiedTime: Date? { get set }
     var lastModifiedBy: String? { get set }
}